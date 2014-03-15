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

local Item = QuickCreateItemTable(BaseArmor, "armor_back_sack", "Item Sack", "Up the amount of things you can carry", "icons/amor_junkyarmor")
Item = AddModel(Item, "models/props_c17/TrapPropeller_Engine.mdl", Vector(0, -10, 10), Angle(-95.9, -10.5, 0))
Item = AddStats(Item, "slot_back", 0)
Item = AddBuff(Item, "stat_maxweight", 10)
Item.Weight = 0
Item.SellPrice = 200
Register.Item(Item)
