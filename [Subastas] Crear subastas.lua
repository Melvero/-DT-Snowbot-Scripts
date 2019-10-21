-- #########################
-- Hand made by : RevKTL
-- Purpose: Selling
-- Details: Read carefully, script its mixed both spanish and english texts, use translator and learn both.
-- Detalles: Lee con detalle, el script esta un poco mezclado en ingles y español, usa un traductor si lo consideras necesario.
-- #########################



-- Items to sell, ID, min price, amount by 1,10,100, NameID, put yours in your language.

Objetos = {
    {ItemID = 6897, preciomin = 0, lote = 100, nameID = "Plume de Piou Bleu"},
    {ItemID = 6898, preciomin = 0, lote = 100, nameID = "Plume de Piou Violet"},
    {ItemID = 6899, preciomin = 0, lote = 100, nameID = "Plume de Piou Vert"},
    {ItemID = 6900, preciomin = 0, lote = 100, nameID = "Plume de Piou Rouge"},
    {ItemID = 6902, preciomin = 0, lote = 100, nameID = "Plume de Piou Jaune"},
    {ItemID = 6903, preciomin = 0, lote = 100, nameID = "Plume de Piou Rose"}
}

bancoastrub = false -- banco o casa
update = false -- Actualizar lista de venta automaticamente utilizando la funcion del bot

function lotselector(lote)
    if lote == 100 then
        return 3
    elseif lote == 10 then
        return 2
    elseif lote == 1 then
        return 1
    end
end

function recogerbanco()
    npc:npcBank(-1)
    global:delay(1000)
    global:printSuccess("Banco abierto")
    global:printSuccess("Recogiendo Items para vender")
    for i, v in ipairs(Objetos) do
        if (exchange:storageItemQuantity(v.ItemID) >= exchange:storageItemQuantity(v.lote)) then
            while (exchange:storageItemQuantity(v.ItemID) > 99) and
                ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(v.ItemID) * 100)) do
                exchange:getItem(v.ItemID, 100)
                global:printSuccess("Recogiendo " .. v.nameID)
            end
        end
    end
    global:leaveDialog()
    venta = false
    for i, v in ipairs(Objetos) do
        if (inventory:itemCount(v.ItemID) >= 100) then
            venta = true
        end
    end
    if venta == true then
        Selling()
    else
        global:printMessage("No tenemos items para la venta")
        global:finishScript()
    end
end

function RecogerItems()
    if update then
        npc:npcSale()
        global:printMessage("Comprobando si nuestros objetos son los más baratos...")
        sale:UpdateAllItems()
        global:printSuccess("Objetos comprobados")
    end
    map:lockedStorage(ID,"PASS") -- el primer parametro es el ID de la celda del baul de tu casa separado por ¨, ¨ viene la contraseña, en caso de ser dueño escribe ["-1"]
    global:delay(1000)
    global:printSuccess("Recogiendo Items para vender")
    for i, v in ipairs(Objetos) do
        if (exchange:storageItemQuantity(v.ItemID) >= exchange:storageItemQuantity(v.lote)) then
            while (exchange:storageItemQuantity(v.ItemID) > 99) and
                ((inventory:podsMax() - inventory:pods()) > (inventory:itemWeight(v.ItemID) * 100)) do
                exchange:getItem(v.ItemID, 100)
                global:printSuccess("Recogiendo " .. v.nameID)
            end
        end
    end
    global:leaveDialog()
    venta = false
    for i, v in ipairs(Objetos) do
        if (inventory:itemCount(v.ItemID) >= 100) then
            venta = true
        end
    end
    if venta == true then
        Selling()
    else
        global:printMessage("No tenemos items para la venta")
        global:finishScript()
    end
end

function Selling()
    npc:npcSale()
    global:printSuccess("Selling")
    if (sale:AvailableSpace() > 0 and character:kamas() > 1000) then
        for i, v in ipairs(Objetos) do
            v.precio = sale:GetpriceItem(v.ItemID, lotselector(v.lote))
            while (inventory:itemCount(v.ItemID) >= v.lote) do
                if v.precio >= v.preciomin then
                    global:printSuccess(
                        "Venta de: " .. v.nameID .. " [Cantidad: " .. v.lote .. "] [Precio: " .. v.precio .. "]"
                    )
                    if (sale:AvailableSpace() > 0 and character:kamas() > 1000) then
                        sale:SellItem(v.ItemID, v.lote, v.precio)
                    else
                        break
                    end
                else
                    global:printMessage("El precio minimo del objeto no es el que esperabamos")
                end
            end
        end
    else
        global:printSuccess("We dont owe enugh money to sell or avaiable space.")
        global:finishScript()
    end
    global:leaveDialog()
    if bancoastrub then
        recogerbanco()
    else
        RecogerItems()
    end
end

function Housing()
    map:lockedHouse(ID,"PASS") -- el primer parametro es el ID de la celda de tu casa separado por ¨, ¨ viene la contraseña
end

function move()
    if bancoastrub == true then
        if (inventory:podsP() < 14) then
            return {
                {map = "83887104", custom = recogerbanco}
            }
        end
        if (inventory:podsP() > 15) then
            return {
                {map = "83887104", custom = Selling}
            }
        end
    else
        if (inventory:podsP() < 14) then
            return {
                {map = "84675591", custom = Housing},
                {map = "82841604", door = 367},
                {map = "82842628", custom = RecogerItems}
            }
        end
        if (inventory:podsP() > 15) then
            return {
                {map = "82842628", custom = Selling}
            }
        end
    end
end
