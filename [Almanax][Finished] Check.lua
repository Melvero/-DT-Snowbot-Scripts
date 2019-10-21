--#####################--
--## Scripted by: RevKTL
--## Purpose: Almanax
--## version: 0.1
--## Comments: Read before using.
--#####################--

--- CONFIGURATION ---
First_Talk = false -- First time talk? (Aka, never did almanax.)
Stoppt = false -- Disconnect at end?
PocimaAlmanax = true -- Buy almanax potion?
Compra = true -- Buy quest items?
ID_ItemBuy = 11136 -- Item ID to buy.
Item_BuyQTT = 2 -- Item ID Quantity to buy.
MaxPrice = 10000 -- Item Max Price (if you set a lower market price it won't buy at all.)

--- NPC ---
ID_Elder = 1625 -- Elder ID
ID_Aliens = {
    1702,
    1703,
    1704,
    1705,
    1706,
    1707,
    1708,
    1709,
    1710,
    1711,
    1712,
    1713,
    1714,
    1715,
    1716,
    1717,
    1718,
    1719,
    1720,
    1721,
    1722,
    1723,
    1724,
    1725,
    1726,
    1727,
    1728,
    1729,
    1730,
    1731,
    1732
}
--- DOORS ---
FirstDoor = 275
PrayAltar = 384
DB_01 = "466"
DB_02 = "452" -- CellID of the season room
DoorIs = 346 -- This value changes between seasons. Greendoor = 244  Yellowdoor = 273 RedDoor = 346 BlueDoor = 375

--#|DON'T TOUCH ME UNLESS YOU KNOW WHAT YOU'RE DOING|#--
questalmanax = false
pocionusada = false
itemscomprados = false
itemsentregados = false
Etapa1 = false
Etapa2 = false
Etapa3 = false
pause = 1000

function move()
    if pocionusada == false then
        AlmanaxPot()
    end
    if Etapa1 == false then
        return {
            {map = "101450251", custom = QuestPickUP, door = FirstDoor}
        }
    elseif Etapa1 == true and Etapa2 == false then
        return {
            {map = "101452297", door = DoorIs},
            {map = "101450245", custom = AllienPickUp}
        }
    elseif Etapa2 == true and Etapa3 == false then
        return {
            {map = "101452297", path = DB_01},
            {map = "101450251", custom = QuestReturn}
        }
    elseif Etapa3 == true then
        if Stoppt then
            global:disconnect()
        else
            global:finishScript()
        end
    end
end
function CompraItems()
    global:printSuccess("[Bot]-[Action] Iniciando la compra de articulos | Starting Item Buying")
    npc:npcBuy()
    global:delay(pause)
    if inventory:itemCount(ID_ItemBuy) >= Item_BuyQTT then
        global:printMessage(
            "[Bot]-[Message] Disponemos de la cantidad de items necesarios para la quest. | Quest items disposal true."
        )
    else
        for i = 1, Item_BuyQTT do
            sale:buyItem(ID_ItemBuy, 1, MaxPrice)
            global:delay(pause)
        end
    end
    global:printSuccess("[Bot]-[Success] Compra Finalizada!")
    itemscomprados = true
    global:delay(pause)
    global:leaveDialog()
end
function QuestPickUP()
    if First_Talk == true then
        npc:npc(ID_Elder, 3)
        global:printSuccess("[Bot]-[Quest]: Año del dragon Iniciada | Year of the dragon Started")
        npc:reply(-1)
        npc:reply(-1)
        npc:reply(-1)
        npc:reply(-1)
        npc:reply(-1)
        First_Talk = false
    end
    if questalmanax == false then
        npc:npc(ID_Elder, 3)
        global:printSuccess("[Bot]-[Quest] Almanax Iniciada | Almanax Started")
        npc:reply(-1)
        npc:reply(-1)
        npc:reply(-1)
        npc:reply(-1)
        questalmanax = true
    end
    if Compra == true and itemscomprados == false then
        CompraItems()
    end
    if itemsentregados == false then
        npc:npc(ID_Elder, 3)
        npc:reply(-1)
        npc:reply(-1)
        global:printSuccess("[Bot]-[Success] Items entregados al viejo")
        global:printMessage("[Bot]-[Action] Iniciando el camino al Rezo")
        itemsentregados = true
    end
    if questalmanax and itemsentregados then
        Etapa1 = true
        move()
    end
    global:printMessage("[Bot]-[Action] Primera etapa completada.")
end
function AllienPickUp()
    global:delay(pause)
    global:printMessage("[Bot]-[Action] Intentando Rezar... | Trying to Pray")
    map:door(PrayAltar)
    global:printSuccess("[Bot]-[Success] Has rezado con exito. | Success Pray")
    global:delay(pause)
    for index, npcid in ipairs(ID_Aliens) do
        npc:npc(npcid, 3)
    end
    global:printSuccess("[Bot]-[Action] Iniciando la charla con el Alien | Talking with Alien")
    npc:reply(-1)
    global:printSuccess("N1")
    npc:reply(-1)
    global:printSuccess("N2")
    npc:reply(-1)
    global:printSuccess("N3")
    npc:reply(-1)
    global:printSuccess("N4")
    npc:reply(-1)
    global:printSuccess("N5")
    npc:reply(-1)
    global:printSuccess("N6")
    global:printSuccess("[Bot]-[Success] Finalizada la charla con el alien | Ended Alien chatting")
    global:delay(pause)
    map:changeMap(DB_02)
    Etapa2 = true
    global:printMessage("[Bot]-[Action] Segunda etapa completada.")
    move()
end
function QuestReturn()
    global:printSuccess("[Bot]-[Success] Finalizando quest de Almanax | Ending Almanax Quest")
    npc:npc(ID_Elder, 3)
    if npc:reply(-1) then
        global:delay(pause)
    end
    if npc:reply(-1) then
        global:delay(pause)
    end
    global:printSuccess("[Bot]-[Quest] Fin. | End")
    Etapa3 = true
    move()
    global:printMessage("[Bot]-[Action] Tercera etapa completada.")
end
function AlmanaxPot()
    if PocimaAlmanax then
        if pocionusada == false and map:onMap("101450251") == false then
            global:printSuccess("[Bot]-[Compra] Iniciando la compra de pocion de Almanax | Buying Almanax Potion")
            npc:npcBuy()
            global:delay(pause)
            sale:buyItem(13442, 1, 1000)
            global:delay(pause)
            global:printSuccess("[Bot]-[Success] Compra Finalizada! | Item Buyed!")
            global:delay(pause)
            global:leaveDialog()
            global:printSuccess("[Bot]-[Action] Usando la pocion para ir a Almanax | Using Almanax Potion")
            inventory:useItem(13442)
            global:delay(pause)
            pocionusada = true
        end
    elseif PocimaAlmanax == false and map:onMap("101450251") == false then
        global:printError(
            "[Bot]-[Error] No quieres comprar la pocion y tampoco estas en el mapa, eres nub o ke! | Nor potion nor on map , Noob!"
        )
        global:printError("[Bot]-[Error] Finalizando script | Halting...")
        global:finishScript()
    end
end
