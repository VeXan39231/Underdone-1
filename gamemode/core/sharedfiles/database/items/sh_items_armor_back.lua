local function AddModel(tblAddTable, strModel, vecPostion, angAngle, clrColor, strMaterial, vecScale)
	tblAddTable.Model = tblAddTable.Model or {}
	if type(tblAddTable.Model) != "table" then tblAddTable.Model = {} end
	table.insert(tblAddTable.Model, {Model = strModel, Position = vecPostion, Angle = angAngle, Color = clrColor, Material = strMaterial, Scale = vecScale})
	return tblAddTable
end
local function AddStats(tblAddTable, strSlot, intArmor)
	tblAddTable.Slot = strSlot
	tblAddTable.Armor = intArmor
	return tblAddTable
end
local function AddBuff(tblAddTable, strBuff, intAmount)
	tblAddTable.Buffs[strBuff] = intAmount
	return tblAddTable
end

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack", "Back Sack", "Upgrades your storage-space by 10 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(0, 255, 0, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 10)
Item.Weight = 0
Item.SellPrice = 100
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack2", "Back Sack 2", "Upgrades your storage-space by 20 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(0, 0, 255, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 20)
Item.Weight = 0
Item.SellPrice = 200
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack3", "Back Sack 3", "Upgrades your storage-space by 30 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(0, 0, 255, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack4", "Back Sack 4", "Upgrades your storage-space by 40 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(255, 0, 255, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack5", "Back Sack 5", "Upgrades your storage-space by 50 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(255, 153, 0, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack6", "Back Sack 6", "Upgrades your storage-space by 60 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(255, 255, 0, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack7", "Back Sack 7", "Upgrades your storage-space by 70 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(0, 255, 255, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack8", "Back Sack 8", "Upgrades your storage-space by 80 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(120, 0, 255, 255))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack9", "Back Sack 9", "Upgrades your storage-space by 90 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0), Color(0, 0, 0, 255), Material("models/shiny"))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack10", "Ultimate Back Sack", "Upgrades your storage-space by 100 slots.", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 30)
Item.Weight = 0
Item.SellPrice = 300
Register.Item(Item)