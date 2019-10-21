-- Hand made by : Drigtime
-- Modded by: RevKTL
-- Purpose: All Dopeuls on Touch
-- Map: The Village -2, 0 !Important, you need to save the map aswell < bot will auto purchase potion to get back to Zaap in case needed. 

-------------------------------------------------
regenwithitem = false -- Regen with items? True = Yes , False = No
rengenitem = 528 -- ID of the item to Regen
regenMin = 95 -- Min life to regeneration
regenMax = 100 -- Max regen < don't change this unless you know what you're doing.
QuestDopeuls = true -- Dopeul quest Accepted? true = no, false = yes.
LogOffAtEnd = false -- Log off at end
-------------------------------------------------
pause = 1000
firsttalk = true
firstportail = true
Heavengot = true
dead = character:energyPoints()

function interactive_items()
    if firstportail then
        firstportail = false
        map:useById(472880, -1)
        global:delay(pause)
    else
        map:useById(472866, -1)
        global:delay(pause)
    end
end
function Heaven()
    if Heavengot then
        Heavengot = false
        map:changeMap("top")
        global:printSuccess("Ascendiendo a zobal")
    else
        global:printSuccess("Descendiendo zobal")
        map:changeMap("bottom")
    end
end
function TalkToBad()
    if firsttalk then
        firsttalk = false
        npc:npc(1422, 3)
        global:delay(1000)
        npc:reply(-1) 
    else
        npc:npc(1422, 3)
        global:delay(1000)
        npc:reply(-2) 
    end
end

dopeul = {
    {
        toggle = true,
        mapID = "17046530",
        dopeulName = "Sram",
        dopeulTrainerId = 441,
        changeMapMethode = "door",
        changeMapActionID = 416,
        mapsWithChangeMap = {
            -------------------------------------- Sram
            {map = "88213271", changeMap = "left"},
            {map = "-3,0", changeMap = "left", nextMap = "top", doNextMap = "no"},
            {map = "88214295", changeMapDoor = "317", nextMap = "right", doNextMap = "no"}, 
            {map = "17046528", changeMapDoor = "275", nextMap = "388", doNextMap = "no"}, 
            {map = "-3,-1", changeMap = "top"},
            {map = "-3,-2", changeMap = "right"},
            {map = "-2,-2", changeMap = "top"},
            {map = "-2,-3", changeMap = "left"},
            {map = "-3,-3", changeMap = "top"},
            ------------------------------------- Sacro
            {map = "88213787", changeMapDoor = "204", nextMap = "right", doNextMap = "no"}, 
            {map = "97255951", changeMap = "375", nextMap = "452", doNextMap = "no"},
            {map = "132357", changeMap = "top", nextMapDoor = "367", doNextMap = "no"},
            {map = "132358", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "132359", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "132360", changeMap = "257", nextMap = "bottom", doNextMap = "no"}, 
            {map = "17050624", changeMapDoor = "285", nextMap = "499", doNextMap = "no"},
            {map = "17051648", changeMapDoor = "243", nextMap = "401", doNextMap = "no"},
            {map = "-2,-4", changeMap = "right"},
            ------------------------------------- Enutrof
            {map = "88212763", changeMapDoor = "415", nextMap = "right", doNextMap = "no"}, 
            {map = "17048576", changeMapDoor = "311", nextMap = "456", doNextMap = "no"},
            {map = "0,-4", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-4", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ------------------------------------- Zurkarak - Ecaflip
            {map = "88080668", changeMapDoor = "314", nextMapCustom = Heaven, doNextMap = "no"}, 
            {map = "17039360", changeMapDoor = "245", nextMap = "382", doNextMap = "no"},
            {map = "17039361", changeMapDoor = "305", nextMapDoor = "214", doNextMap = "no"},
            ------------------------------------- Zobal
            {map = "1,-6", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-7", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "70778880", changeMapDoor = "144", nextMap = "444", doNextMap = "no"},
            {map = "69206274", changeMapDoor = "107", nextMapDoor = "347", doNextMap = "no"},
            {map = "69207298", changeMapDoor = "184", nextMapDoor = "394", doNextMap = "no"},
            {map = "69208322", changeMapDoor = "184", nextMapDoor = "393", doNextMap = "no"},
            {map = "69209346", changeMapDoor = "287", nextMapDoor = "402", doNextMap = "no"},
            {map = "69208064", changeMapDoor = "290", nextMap = "511", doNextMap = "no"},
            --------------------------------------- Ocra
            {map = "1,-3", changeMap = "left"},
            {map = "0,-3", changeMap = "bottom"},
            {map = "0,-2", changeMap = "bottom"},
            {map = "0,-1", changeMap = "bottom"},
            {map = "0,0", changeMap = "bottom"},
            {map = "0,1", changeMap = "bottom"},
            {map = "0,2", changeMap = "bottom"},
            {map = "88212244", changeMapDoor = "401", nextMap = "right", doNextMap = "no"},
            {map = "17044483", changeMapDoor = "311", nextMap = "451", doNextMap = "no"},
            ----------------------------------------- Yopuka
            {map = "88080660", changeMapDoor = "356", nextMap = "right", doNextMap = "no"},
            {map = "17047556", changeMap = "429", nextMap = "410", doNextMap = "no"},
            {map = "88081172", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, 
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, 
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, 
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, 
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, 
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, 
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, 
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, 
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17051650",
        dopeulName = "sacrieur",
        dopeulTrainerId = 443,
        changeMapMethode = "path",
        changeMapActionID = "473",
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "left"},
            {map = "17046530", changeMapDoor = "416"},
            {map = "88214295", changeMap = "right"},
            {map = "17046528", changeMap = "388"},
            {map = "-3,-1", changeMap = "top"},
            {map = "-3,-2", changeMap = "right"},
            {map = "-2,-2", changeMap = "top"},
            {map = "-2,-3", changeMap = "left"},
            {map = "-3,-3", changeMap = "top"},
            {map = "-3,0", changeMap = "top"},
            ------------------------------------- Sacro
            {map = "88213787", changeMapDoor = "204", nextMap = "right", doNextMap = "no"}, -- Puerta Entrada cueva
            {map = "97255951", changeMap = "375", nextMap = "452", doNextMap = "no"},
            {map = "132357", changeMap = "top", nextMapDoor = "367", doNextMap = "no"},
            {map = "132358", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "132359", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "132360", changeMap = "257", nextMap = "bottom", doNextMap = "no"}, -- Puerta Sacro
            {map = "17050624", changeMapDoor = "285", nextMap = "499", doNextMap = "no"},
            {map = "17051648", changeMapDoor = "243", nextMap = "401", doNextMap = "no"},
            {map = "-2,-4", changeMap = "right"},
            ------------------------------------- Enutrof
            {map = "88212763", changeMapDoor = "415", nextMap = "right", doNextMap = "no"}, -- porte temple Enutrof
            {map = "17048576", changeMapDoor = "311", nextMap = "456", doNextMap = "no"},
            {map = "0,-4", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-4", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ------------------------------------- Zurkarak - Ecaflip
            {map = "88080668", changeMapDoor = "314", nextMapCustom = Heaven, doNextMap = "no"}, -- Entrer temple dopeul
            {map = "17039360", changeMapDoor = "245", nextMap = "382", doNextMap = "no"},
            {map = "17039361", changeMapDoor = "305", nextMapDoor = "214", doNextMap = "no"},
            ------------------------------------- Zobal
            {map = "1,-6", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-7", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "70778880", changeMapDoor = "144", nextMap = "444", doNextMap = "no"},
            {map = "69206274", changeMapDoor = "107", nextMapDoor = "347", doNextMap = "no"},
            {map = "69207298", changeMapDoor = "184", nextMapDoor = "394", doNextMap = "no"},
            {map = "69208322", changeMapDoor = "184", nextMapDoor = "393", doNextMap = "no"},
            {map = "69209346", changeMapDoor = "287", nextMapDoor = "402", doNextMap = "no"},
            {map = "69208064", changeMapDoor = "290", nextMap = "511", doNextMap = "no"},
            --------------------------------------- Ocra
            {map = "1,-3", changeMap = "left"},
            {map = "0,-3", changeMap = "bottom"},
            {map = "0,-2", changeMap = "bottom"},
            {map = "0,-1", changeMap = "bottom"},
            {map = "0,0", changeMap = "bottom"},
            {map = "0,1", changeMap = "bottom"},
            {map = "0,2", changeMap = "bottom"},
            {map = "88212244", changeMapDoor = "401", nextMap = "right", doNextMap = "no"},
            {map = "17044483", changeMapDoor = "311", nextMap = "451", doNextMap = "no"},
            ----------------------------------------- Yopuka
            {map = "88080660", changeMapDoor = "356", nextMap = "right", doNextMap = "no"},
            {map = "17047556", changeMap = "429", nextMap = "410", doNextMap = "no"},
            {map = "88081172", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, -- Habla con Bad
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17048578",
        dopeulName = "Enutrof",
        dopeulTrainerId = 440,
        changeMapMethode = "door",
        changeMapActionID = 325,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "top"},
            {map = "-1,-1", changeMap = "top"},
            {map = "-1,-2", changeMap = "top"},
            {map = "-1,-3", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ------------------------------------- Sacro
            {map = "17051650", changeMap = "473"},
            {map = "88213787", changeMap = "right"}, -- Puerta Entrada cueva
            {map = "97255951", changeMap = "452"},
            {map = "132357", changeMapDoor = "367"},
            {map = "132358", changeMap = "bottom"},
            {map = "132359", changeMap = "bottom"},
            {map = "132360", changeMap = "bottom"}, -- Puerta Sacro
            {map = "17050624", changeMap = "499"},
            {map = "17051648", changeMap = "401"},
            {map = "-2,-4", changeMap = "right"},
            ------------------------------------- Enutrof
            {map = "88212763", changeMapDoor = "415", nextMap = "right", doNextMap = "no"}, -- porte temple Enutrof
            {map = "17048576", changeMapDoor = "311", nextMap = "456", doNextMap = "no"},
            {map = "0,-4", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-4", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ------------------------------------- Zurkarak - Ecaflip
            {map = "88080668", changeMapDoor = "314", nextMapCustom = Heaven, doNextMap = "no"}, -- Entrer temple dopeul
            {map = "17039360", changeMapDoor = "245", nextMap = "382", doNextMap = "no"},
            {map = "17039361", changeMapDoor = "305", nextMapDoor = "214", doNextMap = "no"},
            ------------------------------------- Zobal
            {map = "1,-6", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-7", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "70778880", changeMapDoor = "144", nextMap = "444", doNextMap = "no"},
            {map = "69206274", changeMapDoor = "107", nextMapDoor = "347", doNextMap = "no"},
            {map = "69207298", changeMapDoor = "184", nextMapDoor = "394", doNextMap = "no"},
            {map = "69208322", changeMapDoor = "184", nextMapDoor = "393", doNextMap = "no"},
            {map = "69209346", changeMapDoor = "287", nextMapDoor = "402", doNextMap = "no"},
            {map = "69208064", changeMapDoor = "290", nextMap = "511", doNextMap = "no"},
            --------------------------------------- Ocra
            {map = "1,-3", changeMap = "left"},
            {map = "0,-3", changeMap = "bottom"},
            {map = "0,-2", changeMap = "bottom"},
            {map = "0,-1", changeMap = "bottom"},
            {map = "0,0", changeMap = "bottom"},
            {map = "0,1", changeMap = "bottom"},
            {map = "0,2", changeMap = "bottom"},
            {map = "88212244", changeMapDoor = "401", nextMap = "right", doNextMap = "no"},
            {map = "17044483", changeMapDoor = "311", nextMap = "451", doNextMap = "no"},
            ----------------------------------------- Yopuka
            {map = "88080660", changeMapDoor = "356", nextMap = "right", doNextMap = "no"},
            {map = "17047556", changeMap = "429", nextMap = "410", doNextMap = "no"},
            {map = "88081172", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, -- Habla con Bad
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17039362",
        dopeulName = "Zukarak",
        dopeulTrainerId = 438,
        changeMapMethode = "door",
        changeMapActionID = 233,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "88212759", changeMap = "top"},
            {map = "-1,-1", changeMap = "top"},
            {map = "-1,-2", changeMap = "top"},
            {map = "-1,-3", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
            {map = "0,-3", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-3", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88212763", changeMap = "right"},
            {map = "17048576", changeMap = "456"},
            {map = "0,-4", changeMap = "bottom"},
            {map = "1,-4", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ------------------------------------- Zurkarak - Ecaflip
            {map = "88080668", changeMapDoor = "314", nextMapCustom = Heaven, doNextMap = "no"}, -- Entrer temple dopeul
            {map = "17039360", changeMapDoor = "245", nextMap = "382", doNextMap = "no"},
            {map = "17039361", changeMapDoor = "305", nextMapDoor = "214", doNextMap = "no"},
            ------------------------------------- Zobal
            {map = "1,-6", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-7", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "70778880", changeMapDoor = "144", nextMap = "444", doNextMap = "no"},
            {map = "69206274", changeMapDoor = "107", nextMapDoor = "347", doNextMap = "no"},
            {map = "69207298", changeMapDoor = "184", nextMapDoor = "394", doNextMap = "no"},
            {map = "69208322", changeMapDoor = "184", nextMapDoor = "393", doNextMap = "no"},
            {map = "69209346", changeMapDoor = "287", nextMapDoor = "402", doNextMap = "no"},
            {map = "69208064", changeMapDoor = "290", nextMap = "511", doNextMap = "no"},
            --------------------------------------- Ocra
            {map = "0,-2", changeMap = "bottom"},
            {map = "0,-1", changeMap = "bottom"},
            {map = "0,0", changeMap = "bottom"},
            {map = "0,1", changeMap = "bottom"},
            {map = "0,2", changeMap = "bottom"},
            {map = "88212244", changeMapDoor = "401", nextMap = "right", doNextMap = "no"},
            {map = "17044483", changeMapDoor = "311", nextMap = "451", doNextMap = "no"},
            ----------------------------------------- Yopuka
            {map = "88080660", changeMapDoor = "356", nextMap = "right", doNextMap = "no"},
            {map = "17047556", changeMap = "429", nextMap = "410", doNextMap = "no"},
            {map = "88081172", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, -- Habla con Bad
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "69207040",
        dopeulName = "zobal",
        dopeulTrainerId = 1425,
        changeMapMethode = "door",
        changeMapActionID = 284,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "top"},
            {map = "-1,-1", changeMap = "top"},
            {map = "-1,-2", changeMap = "top"},
            {map = "-1,-3", changeMap = "right"},
            {map = "0,-3", changeMap = "right", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-4", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ------------------------------------- Zurkarak - Ecaflip
            {map = "88080668", changeMapDoor = "314", nextMapCustom = Heaven, doNextMap = "no"}, -- Entrer temple dopeul
            ------------------------------------- Zobal
            {map = "1,-6", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "1,-7", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            {map = "70778880", changeMapDoor = "144", nextMap = "444", doNextMap = "no"},
            {map = "69206274", changeMapDoor = "107", nextMapDoor = "347", doNextMap = "no"},
            {map = "69207298", changeMapDoor = "184", nextMapDoor = "394", doNextMap = "no"},
            {map = "69208322", changeMapDoor = "184", nextMapDoor = "393", doNextMap = "no"},
            {map = "69209346", changeMapDoor = "287", nextMapDoor = "402", doNextMap = "no"},
            {map = "69208064", changeMapDoor = "290", nextMap = "511", doNextMap = "no"},
            --------------------------------------- Ocra
            {map = "0,-2", changeMap = "bottom"},
            {map = "0,-1", changeMap = "bottom"},
            {map = "0,0", changeMap = "bottom"},
            {map = "0,1", changeMap = "bottom"},
            {map = "0,2", changeMap = "bottom"},
            {map = "88212244", changeMapDoor = "401", nextMap = "right", doNextMap = "no"},
            {map = "17044483", changeMapDoor = "311", nextMap = "451", doNextMap = "no"},
            ----------------------------------------- Yopuka
            {map = "88080660", changeMapDoor = "356", nextMap = "right", doNextMap = "no"},
            {map = "17047556", changeMap = "429", nextMap = "410", doNextMap = "no"},
            {map = "88081172", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, -- Habla con Bad
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17044481",
        dopeulName = "Ocra",
        dopeulTrainerId = 439,
        changeMapMethode = "path",
        changeMapActionID = "472",
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"}, -- Portal
            {map = "-1,0", changeMap = "right"},
            {map = "88080668", changeMapCustom = Heaven, doNextMap = "no"}, -- Entrer temple dopeul
            ------------------------------------- Zobal
            {map = "1,-6", changeMap = "bottom"},
            {map = "1,-7", changeMap = "bottom"},
            {map = "70778880", changeMap = "444"},
            {map = "69206274", changeMapDoor = "347", doNextMap = "no"},
            {map = "69207298", changeMapDoor = "394", doNextMap = "no"},
            {map = "69208322", changeMapDoor = "393", doNextMap = "no"},
            {map = "69209346", changeMapDoor = "402", doNextMap = "no"},
            {map = "69208064", changeMap = "511", doNextMap = "no"},
            --------------------------------------- Ocra
            {map = "1,-4", changeMap = "bottom"},
            {map = "1,-3", changeMap = "left"},
            {map = "0,-3", changeMap = "bottom"},
            {map = "0,-2", changeMap = "bottom"},
            {map = "0,-1", changeMap = "bottom"},
            {map = "0,0", changeMap = "bottom"},
            {map = "0,1", changeMap = "bottom"},
            {map = "0,2", changeMap = "bottom"},
            {map = "88212244", changeMapDoor = "401", nextMap = "right", doNextMap = "no"},
            {map = "17044483", changeMapDoor = "311", nextMap = "451", doNextMap = "no"},
            ----------------------------------------- Yopuka
            {map = "88080660", changeMapDoor = "356", nextMap = "right", doNextMap = "no"},
            {map = "17047556", changeMap = "429", nextMap = "410", doNextMap = "no"},
            {map = "88081172", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, -- Habla con Bad
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17047554",
        dopeulName = "Yopuka",
        dopeulTrainerId = 434,
        changeMapMethode = "door",
        changeMapActionID = 269,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "bottom"},
            {map = "-1,1", changeMap = "bottom"},
            {map = "-1,2", changeMap = "bottom"},
            {map = "-1,3", changeMap = "right"},
            {map = "0,3", changeMap = "right"},
            ----------------------------------------- Yopuka
            {map = "88080660", changeMapDoor = "356", nextMap = "right", doNextMap = "no"},
            {map = "17047556", changeMap = "429", nextMap = "410", doNextMap = "no"},
            {map = "88081172", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, -- Habla con Bad
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "67109888",
        dopeulName = "Tymador",
        dopeulTrainerId = 1414,
        changeMapMethode = "door",
        changeMapActionID = 495,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "bottom"},
            {map = "-1,1", changeMap = "bottom"},
            {map = "-1,2", changeMap = "bottom"},
            {map = "-1,3", changeMap = "right"},
            {map = "0,3", changeMap = "right"},
            {map = "1,3", changeMap = "right"},
            {map = "2,3", changeMap = "right"},
            ----------------------------------------- Tymador
            {map = "88081684", changeMapDoor = "191", nextMap = "top", doNextMap = "no"},
            {map = "67373056", changeMapCustom = TalkToBad, nextMapDoor = "241", doNextMap = "no"}, -- Habla con Bad
            {map = "67112960", changeMapDoor = "159", nextMapCustom = TalkToBad, doNextMap = "no"},
            {map = "67111936", changeMapDoor = "338", nextMapDoor = "329", doNextMap = "no"},
            {map = "67110912", changeMapDoor = "311", nextMapDoor = "439", doNextMap = "no"},
            {map = "67108864", changeMapDoor = "323", nextMap = "347", doNextMap = "no"},
            {map = "88081685", changeMap = "top"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17045506",
        dopeulName = "Xelor",
        dopeulTrainerId = 437,
        changeMapMethode = "path",
        changeMapActionID = "410",
        mapsWithChangeMap = {
            {map = "-1,0", changeMap = "bottom"},
            {map = "-1,1", changeMap = "right"},
            {map = "0,1", changeMap = "right"},
            {map = "1,1", changeMap = "right"},
            {map = "2,1", changeMap = "right"},
            ----------------------------------------- Xelor
            {map = "88081686", changeMapDoor = "373", nextMap = "top", doNextMap = "no"}, -- porte temple xelor
            {map = "17045504", changeMapDoor = "346", nextMap = "411", doNextMap = "no"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17049602",
        dopeulName = "Pandawa",
        dopeulTrainerId = 672,
        changeMapMethode = "path",
        changeMapActionID = "452",
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "right"},
            {map = "0,0", changeMap = "right"},
            {map = "1,0", changeMap = "right"},
            {map = "2,0", changeMap = "right"},
            {map = "3,0", changeMap = "right"},
            {map = "88081686", changeMap = "top"},
            {map = "17045504", changeMap = "411"},
            {map = "88081687", changeMap = "right"},
            ----------------------------------------- Pandawa
            {map = "88082199", changeMap = "top", nextMap = "left", doNextMap = "no"},
            {map = "88082200", changeMap = "top", nextMap = "right", doNextMap = "no"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "5,0", changeMap = "bottom"},
            {map = "88082201", changeMapDoor = "381", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Pandawa
            {map = "17049600", changeMapDoor = "317", nextMap = "452", doNextMap = "no"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17042434",
        dopeulName = "Eniripsa",
        dopeulTrainerId = 435,
        changeMapMethode = "door",
        changeMapActionID = 348,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "right"},
            {map = "0,0", changeMap = "right"},
            {map = "1,0", changeMap = "right"},
            {map = "2,0", changeMap = "right"},
            {map = "3,0", changeMap = "right"},
            {map = "4,0", changeMap = "right"},
            {map = "5,0", changeMap = "right"},
            {map = "6,0", changeMap = "right"},
            {map = "7,0", changeMap = "bottom"},
            {map = "88082199", changeMap = "left"},
            {map = "88082200", changeMap = "right"},
            {map = "5,-1", changeMap = "bottom"},
            {map = "88082201", changeMap = "bottom"},
            {map = "17049600", changeMap = "452"},
            {map = "88082710", changeMap = "right"},
            {map = "88083222", changeMap = "right"},
            ----------------------------------------- Eniripsa
            {map = "88083734", changeMapDoor = "340", nextMap = "bottom", doNextMap = "no"}, -- Puerta templo Eniripsa
            {map = "17042432", changeMapDoor = "290", nextMap = "bottom", doNextMap = "no"},
            {map = "17042436", changeMapDoor = "426", nextMapDoor = "319", doNextMap = "no"},
            {map = "17042438", changeMapDoor = "346", nextMapDoor = "337", doNextMap = "no"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17041409",
        dopeulName = "Osamodas",
        dopeulTrainerId = 436,
        changeMapMethode = "path",
        changeMapActionID = "458",
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "right"},
            {map = "0,0", changeMap = "right"},
            {map = "1,0", changeMap = "right"},
            {map = "2,0", changeMap = "right"},
            {map = "3,0", changeMap = "right"},
            {map = "4,0", changeMap = "right"},
            {map = "5,0", changeMap = "right"},
            {map = "6,0", changeMap = "right"},
            {map = "7,0", changeMap = "bottom"},   
            {map = "88083734", changeMap = "bottom"},
            {map = "17042432", changeMap = "bottom"},
            {map = "17042436", changeMapDoor = "319"},
            {map = "17042438", changeMapDoor = "337"},
            {map = "88083733", changeMap = "right"},
            ----------------------------------------- Osamodas
            {map = "88084245", changeMapDoor = "261", nextMap = "right", doNextMap = "no"}, -- Puerta templo Osamodas
            {map = "17041411", changeMapDoor = "242", nextMap = "424", doNextMap = "no"},
            {map = "88084757", changeMap = "top", nextMap = "bottom", doNextMap = "no"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    }, 
    {
        toggle = true,
        mapID = "96471552",
        dopeulName = "Steamer",
        dopeulTrainerId = 1594,
        changeMapMethode = "door",
        changeMapActionID = 311,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "right"},
            {map = "0,0", changeMap = "right"},
            {map = "1,0", changeMap = "right"},
            {map = "2,0", changeMap = "right"},
            {map = "3,0", changeMap = "right"},
            {map = "4,0", changeMap = "right"},
            {map = "5,0", changeMap = "right"},
            {map = "6,0", changeMap = "right"},
            {map = "7,0", changeMap = "bottom"},
            {map = "7,1", changeMap = "right"},
            {map = "8,1", changeMap = "right"},
            {map = "88084245", changeMap = "right"},
            {map = "17041411", changeMapDoor = "424"},
            {map = "88084757", changeMap = "bottom"},
            ----------------------------------------- Steamer
            {map = "68420616", changeMapCustom= interactive_items, nextMap = "bottom", doNextMap = "no"}, --Submarino Steamer
            {map = "95423492", changeMapDoor = "344", nextMapCustom = interactive_items, doNextMap = "no"},
            {map = "96470786", changeMapDoor = "398", nextMap = "452", doNextMap = "no"},
            {map = "96470528", changeMap = "499", nextMap = "494", doNextMap = "no"},
            {map = "88084756", changeMap = "right"},
            {map = "88085268", changeMap = "bottom"},
            {map = "88085267", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17043458",
        dopeulName = "Feca",
        dopeulTrainerId = 433,
        changeMapMethode = "door",
        changeMapActionID = 451,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "right"},
            {map = "0,0", changeMap = "right"},
            {map = "1,0", changeMap = "right"},
            {map = "2,0", changeMap = "right"},
            {map = "3,0", changeMap = "right"},
            {map = "4,0", changeMap = "right"},
            {map = "5,0", changeMap = "right"},
            {map = "6,0", changeMap = "right"},
            {map = "7,0", changeMap = "bottom"},
            {map = "7,1", changeMap = "bottom"},
            {map = "7,2", changeMap = "right"},
            {map = "8,2", changeMap = "bottom"},
            {map = "8,3", changeMap = "right"},
            {map = "9,3", changeMap = "right"},
            {map = "10,3", changeMap = "bottom"},
            {map = "10,4", changeMap = "bottom"},
            {map = "10,5", changeMap = "right"},
            {map = "11,5", changeMap = "right"},
            ----------------------------------------- Feca
            {map = "88086290", changeMapDoor = "400", nextMap = "bottom", doNextMap = "no"}, -- Puerta Feca
            {map = "17043460", changeMapDoor = "290", nextMapDoor = "424", doNextMap = "no"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    },
    {
        toggle = true,
        mapID = "17040386",
        dopeulName = "Sadida",
        dopeulTrainerId = 442,
        mapsWithChangeMap = {
            {map = "88213271", changeMap = "right"},
            {map = "-1,0", changeMap = "bottom"},
            {map = "-1,1", changeMap = "bottom"},
            {map = "-1,2", changeMap = "bottom"},
            {map = "-1,3", changeMap = "bottom"},
            {map = "-1,4", changeMap = "bottom"},
            {map = "-1,5", changeMap = "bottom"},
            {map = "-1,6", changeMap = "bottom"},
            {map = "-1,7", changeMap = "right"},
            {map = "0,7", changeMap = "bottom"},
            {map = "0,8", changeMap = "bottom"},
            {map = "0,9", changeMap = "left"},
            {map = "88086290", changeMap = "bottom"},
            {map = "17043460", changeMap = "424"},
            {map = "12,4", changeMap = "bottom"},
            {map = "12,6", changeMap = "bottom"},
            {map = "12,7", changeMap = "left"},
            {map = "11,7", changeMap = "left"},
            {map = "10,7", changeMap = "left"},
            {map = "9,7", changeMap = "left"},
            {map = "8,7", changeMap = "left"},
            {map = "7,7", changeMap = "left"},
            {map = "6,7", changeMap = "left"},
            {map = "5,7", changeMap = "bottom"},
            {map = "5,8", changeMap = "bottom"},
            {map = "5,9", changeMap = "left"},
            {map = "4,9", changeMap = "left"},
            {map = "3,9", changeMap = "left"},
            {map = "2,9", changeMap = "left"},
            {map = "1,9", changeMap = "left"},
            {map = "0,9", changeMap = "left"},
            ----------------------------------------- Sadida
            {map = "88212750", changeMapDoor = "342"}, -- Puerta Templo Sadida
            {map = "17040384", changeMapDoor = "274"}
        }
    }
}

function resumeAfterDeath()
    for index, value in ipairs(dopeul) do
        if dopeul[index + 1] then
            if not value.toggle and dopeul[index + 1].toggle then
                global:printError("[Bot] Muerte contra el dopeul " .. value.dopeulName .. ", Reanudando el trayecto")
                value.toggle = true
                mapsWithChangeMap = value.mapsWithChangeMap
            end
        else
            if not value.toggle and not dopeul[index + 1] then
                global:printError("[Bot] Muerte contra el dopeul " .. value.dopeulName .. ", Reanudando el trayecto")
                value.toggle = true
                mapsWithChangeMap = value.mapsWithChangeMap
            end
        end
    end
end

function fightDopeul()
    for index, value in ipairs(dopeul) do
        if map:onMap("17046530") and QuestDopeuls then
            QuestDopeuls = false
            npc:npc(441, 3)
            global:delay(1000)
            npc:reply(-1)
            global:delay(1000)
            global:printSuccess('[Bot] Aceptada la quest "Aniquilar Dopeuls"')
            global:printSuccess(
                "╔═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
            )
            global:printSuccess(
                "║ Si aparece un mensaje de error es que ya has tomado la misión o que ya has derrotado al dopeul, la solución es reiniciar el script a través del botón ► en Snowbot"
            )
            global:printSuccess(
                "╚═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
            )
            npc:reply(-2)
            global:delay(1000)
            npc:leaveDialog()
            return fightDopeul()
        elseif map:onMap(value.mapID) and value.toggle then
            if math.floor(character:lifePoints() * 100 / character:maxlifePoints()) < regenMin then
                tempderegen = math.floor(((character:maxlifePoints() * regenMax / 100) - character:lifePoints()) / 2)
                global:printSuccess("[Bot] Regeneracion automatica.")
                if regenwithitem then
                    while (math.floor(character:lifePoints() * 100 / character:maxlifePoints()) < regenMax) do
                        inventory:useItem(rengenitem)
                        global:delay(250)
                    end
                else
                    global:printSuccess("[Bot] La regeneracion finalizara en " .. tempderegen .. " segundos")
                    while (math.floor(character:lifePoints() * 100 / character:maxlifePoints()) < regenMax) do
                        global:delay(250)
                    end
                end
                global:printSuccess("[Bot] Fin de regen auto.")
            end
            value.toggle = false
            global:printSuccess("[Bot] Lanzando el combate contra el dopeul: " .. value.dopeulName .. ".")
            global:printSuccess("╔═════════════════════════════════════════════════════════════════════════════════════════════════════")
            global:printSuccess(
                "║ Si aparece un mensaje de error es que ya has tomado la misión o que ya has derrotado al dopeul, la solución es reiniciar el script a través del botón ► en Snowbot"
            )
            global:printSuccess("╚═════════════════════════════════════════════════════════════════════════════════════════════════════")
            npc:npc(value.dopeulTrainerId, 3)
            global:delay(1000)
            npc:reply(-1) 
            global:delay(1000)
            npc:reply(-1) 
            global:delay(1000)
        elseif map:onMap(value.mapID) then
            if value.changeMapMethode == "door" then
                map:door(value.changeMapActionID)
            elseif value.changeMapMethode == "path" then
                map:changeMap(value.changeMapActionID)
            elseif not value.changeMapMethode then
                global:printSuccess("【Todos Los Dopeuls Derrotados!】")
                global:printSuccess("【Finalizando Script!】")               
                if LogOffAtEnd then
                    global:disconnect()
                else
                    global:finishScript()
                end
            end
        end
    end
end

function move()
    -------------------------------------------------
    if character:energyPoints() ~= dead and map:onMap("88213271") then
        firsttalk = true
        firstportail = true
        Heavengot = true
        dead = character:energyPoints()
        for index, actualMap in pairs(mapsWithChangeMap) do
            if actualMap.doNextMap then
                actualMap.doNextMap = "no"
            end
        end
        resumeAfterDeath()
    end
    -------------------------------------------------
    if not LogOffAtEnd and not map:onMap("88213271") then
        global:delay(2000)
        if map:onMap("0,0") then
            LogOffAtEnd = true
        else
            PocionPueblo()
            return move()
        end
    else
        LogOffAtEnd = true
    end
    -------------------------------------------------
    for index, value in ipairs(dopeul) do
        if map:onMap(value.mapID) then
            fightDopeul()
        end
    end
    -------------------------------------------------
    return {
        {map = map:currentMap(), custom = processMap}
    }
end

for i, v in pairs(dopeul) do
    if v.toggle then
        mapsWithChangeMap = v.mapsWithChangeMap
        break
    end
end
------------------------------------------------------------------------------------------------------------------
function processMap()
    for index, actualMap in pairs(mapsWithChangeMap) do
        if (map:onMap(actualMap.map)) then
            if (actualMap.doNextMap) and (actualMap.doThirdMap) and (actualMap.doFourthMap) then
                if (actualMap.doFourthMap) == "yes" then
                    actualMap.doFourthMap = "no"
                    if (actualMap.fourthMapDoor) then
                        actualMap.fourthMapDoor = tonumber(actualMap.fourthMapDoor)
                        map:door(actualMap.fourthMapDoor)
                    elseif (actualMap.fourthMapCustom) then
                        return (actualMap.fourthMapCustom)()
                    else
                        map:changeMap(actualMap.fourthMap)
                    end
                elseif (actualMap.doThirdMap) == "yes" then
                    actualMap.doThirdMap = "no"
                    actualMap.doFourthMap = "yes"
                    if (actualMap.thirdMapDoor) then
                        actualMap.thirdMapDoor = tonumber(actualMap.thirdMapDoor)
                        map:door(actualMap.thirdMapDoor)
                    elseif (actualMap.thirdMapCustom) then
                        return (actualMap.thirdMapCustom)()
                    else
                        map:changeMap(actualMap.thirdMap)
                    end
                elseif (actualMap.doNextMap == "yes") then
                    actualMap.doNextMap = "no"
                    actualMap.doThirdMap = "yes"
                    if (actualMap.nextMapDoor) then
                        actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                        map:door(actualMap.nextMapDoor)
                    elseif (actualMap.nextMapCustom) then
                        return (actualMap.nextMapCustom)()
                    else
                        map:changeMap(actualMap.nextMap)
                    end
                elseif (actualMap.changeMapDoor) then
                    actualMap.doNextMap = "yes"
                    actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                    map:door(actualMap.changeMapDoor)
                elseif (actualMap.changeMapCustom) then
                    actualMap.doNextMap = "yes"
                    return (actualMap.changeMapCustom)()
                elseif (actualMap.changeMap) then
                    actualMap.doNextMap = "yes"
                    map:changeMap(actualMap.changeMap)
                end
            elseif (actualMap.doNextMap) and (actualMap.doThirdMap) then
                if (actualMap.doThirdMap) == "yes" then
                    actualMap.doThirdMap = "no"
                    if (actualMap.thirdMapDoor) then
                        actualMap.thirdMapDoor = tonumber(actualMap.thirdMapDoor)
                        map:door(actualMap.thirdMapDoor)
                    elseif (actualMap.thirdMapCustom) then
                        return (actualMap.thirdMapCustom)()
                    else
                        map:changeMap(actualMap.thirdMap)
                    end
                elseif (actualMap.doNextMap == "yes") then
                    actualMap.doNextMap = "no"
                    actualMap.doThirdMap = "yes"
                    if (actualMap.nextMapDoor) then
                        actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                        map:door(actualMap.nextMapDoor)
                    elseif (actualMap.nextMapCustom) then
                        return (actualMap.nextMapCustom)()
                    else
                        map:changeMap(actualMap.nextMap)
                    end
                elseif (actualMap.changeMapDoor) then
                    actualMap.doNextMap = "yes"
                    actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                    map:door(actualMap.changeMapDoor)
                elseif (actualMap.changeMapCustom) then
                    actualMap.doNextMap = "yes"
                    return (actualMap.changeMapCustom)()
                elseif (actualMap.changeMap) then
                    actualMap.doNextMap = "yes"
                    map:changeMap(actualMap.changeMap)
                end
            elseif (actualMap.doNextMap) then
                if (actualMap.doNextMap == "yes") then
                    actualMap.doNextMap = "no"
                    if (actualMap.nextMapDoor) then
                        actualMap.nextMapDoor = tonumber(actualMap.nextMapDoor)
                        map:door(actualMap.nextMapDoor)
                    elseif (actualMap.nextMapCustom) then
                        return (actualMap.nextMapCustom)()
                    else
                        map:changeMap(actualMap.nextMap)
                    end
                elseif (actualMap.changeMapDoor) then
                    actualMap.doNextMap = "yes"
                    actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                    map:door(actualMap.changeMapDoor)
                elseif (actualMap.changeMapCustom) then
                    actualMap.doNextMap = "yes"
                    return (actualMap.changeMapCustom)()
                elseif (actualMap.changeMap) then
                    actualMap.doNextMap = "yes"
                    map:changeMap(actualMap.changeMap)
                end
            elseif (actualMap.changeMapDoor) then
                actualMap.changeMapDoor = tonumber(actualMap.changeMapDoor)
                map:door(actualMap.changeMapDoor)
            elseif (actualMap.changeMapCustom) then
                return (actualMap.changeMapCustom)()
            elseif (actualMap.changeMap) then
                map:changeMap(actualMap.changeMap)
            elseif (actualMap.forcegather) then
            end
        end
    end
end

function bank()
    global:printError("Pods maximos alcanzados tieens dos opciones:")
    global:printError(" ● Coloca el 101% para la opcion de volver al banco de SnowBot en la pestaña ⚙ (settings)")
    global:printError(" ● O bien ve al banco.")
    global:printError(" ▼▼▼▼ Finalizando script. ▼▼▼▼ ")
    global:finishScript()
end

function phenix()
    LogOffAtEnd = false
    return {
        {map = "9,16", path = "right"},
        {map = "10,16", path = "right"},
        {map = "12,16", path = "right"},
        {map = "11,16", path = "right"},
        {map = "13,16", path = "top"},
        {map = "13,15", path = "top"},
        {map = "13,14", path = "top"},
        {map = "13,13", path = "top"},
        {map = "13,12", path = "left"},
        {map = "12,12", phenix = "184", custom = PocionPueblo},
        {map = "91753991", phenix = "387", custom = PocionPueblo}
    }
end

function PocionPueblo()
    if inventory:itemCount(548) > 1 then
        inventory:useItem(548)
        global:delay(pause)
    else
        global:printSuccess("Iniciando la compra de pocion de recuerdo")
        npc:npcBuy()
        global:delay(pause)
        sale:buyItem(548, 1, 300)
        global:delay(pause)
        global:printSuccess("Compra Finalizada!")
        global:delay(pause)
        global:leaveDialog()
    end
end
