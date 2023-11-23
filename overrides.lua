--Ore overrides to clear unneeded ores.
minetest.register_abm({
    nodenames = {"elepower_dynamics:stone_with_lead"}, -- replace with the name of the ore
    interval = 1, -- runs every 1 second
    chance = 1, -- always fires
    action = function(pos)
        minetest.swap_node(pos, {name = "default:stone"})
    end,
})

minetest.register_abm({
    nodenames = {"elepower_dynamics:stone_with_zinc"}, -- replace with the name of the ore
    interval = 1, -- runs every 1 second
    chance = 1, -- always fires
    action = function(pos)
        minetest.swap_node(pos, {name = "default:stone"})
    end,
})

--Adding dust and ingot groups
minetest.override_item("technic:coal_dust", {
	groups = {coal_dust = 1},
})

minetest.override_item("elepower_dynamics:coal_dust", {
	groups = {coal_dust = 1},
})

minetest.override_item("technic:cast_iron_ingot", {
	groups = {iron_ingot = 1},
})

minetest.override_item("elepower_dynamics:iron_ingot", {
	groups = {iron_ingot = 1},
})

minetest.override_item("technic:lead_dust", {
	groups = {lead_dust = 1},
})

minetest.override_item("elepower_dynamics:lead_dust", {
	groups = {lead_dust = 1},
})

minetest.override_item("technic:lead_ingot", {
	groups = {lead_ingot = 1},
})

minetest.override_item("elepower_dynamics:lead_ingot", {
	groups = {lead_ingot = 1},
})

minetest.override_item("technic:zinc_dust", {
	groups = {zinc_dust = 1},
})

minetest.override_item("elepower_dynamics:zinc_dust", {
	groups = {zinc_dust = 1},
})

minetest.override_item("technic:zinc_ingot", {
	groups = {zinc_ingot = 1},
})

minetest.override_item("elepower_dynamics:zinc_ingot", {
	groups = {zinc_ingot = 1},
})

--Battery
minetest.clear_craft({
	recipe = {
		{"elepower_dynamics:zinc_dust", "elepower_dynamics:graphite_rod", "elepower_dynamics:lead_dust"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
	}
})

--Coal dust
minetest.clear_craft({
	type = "fuel",
	recipe = "technic:coal_dust",
	burntime = 50,
})

--Conduit
minetest.clear_craft({
	recipe = {
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
		{"basic_materials:copper_wire", "basic_materials:copper_wire", "basic_materials:copper_wire"},
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
	}
})

--Gears
minetest.clear_craft({
	output = "elepower_dynamics:iron_gear",
	recipe = {
		{"", "elepower_dynamics:iron_ingot", ""},
		{"elepower_dynamics:iron_ingot", "", "elepower_dynamics:iron_ingot"},
		{"", "elepower_dynamics:iron_ingot", ""},
	}
})

minetest.clear_craft({
	output = "elepower_dynamics:lead_gear",
	recipe = {
		{"", "elepower_dynamics:lead_ingot", ""},
		{"elepower_dynamics:lead_ingot", "", "elepower_dynamics:lead_ingot"},
		{"", "elepower_dynamics:lead_ingot", ""},
	}
})

--Opaque Fluid Duct
minetest.clear_craft({
	recipe = {
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
		{"fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct"},
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
	}
})

--Power cell
minetest.clear_craft({
	output = "elepower_machines:power_cell_0",
	recipe = {
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:control_circuit", "elepower_dynamics:lead_ingot"},
		{"elepower_dynamics:wound_copper_coil", "elepower_machines:machine_block", "elepower_dynamics:wound_copper_coil"},
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:battery", "elepower_dynamics:lead_ingot"},
	}
})

--Sawmill
minetest.clear_craft({
	output = "elepower_machines:sawmill",
	recipe = {
		{"", "elepower_dynamics:integrated_circuit", ""},
		{"elepower_dynamics:steel_gear", "elepower_machines:machine_block", "elepower_dynamics:steel_gear"},
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:diamond_gear", "elepower_dynamics:lead_ingot"},
	}
})

--Tools
minetest.clear_craft({
	output = 'elepower_dynamics:axe_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot', 'elepower_dynamics:iron_ingot'},
		{'elepower_dynamics:iron_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:axe_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot'},
		{'elepower_dynamics:lead_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.clear_craft({
	recipe = {
		{'elepower_dynamics:iron_ingot', '', 'elepower_dynamics:iron_ingot'},
		{'', 'elepower_dynamics:iron_ingot', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:pick_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot', 'elepower_dynamics:iron_ingot', 'elepower_dynamics:iron_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:pick_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:shovel_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:shovel_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:sword_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot'},
		{'elepower_dynamics:iron_ingot'},
		{'group:stick'},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:sword_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot'},
		{'elepower_dynamics:lead_ingot'},
		{'group:stick'},
	}
})

--Wound coils
minetest.clear_craft({
	output = "elepower_dynamics:wound_copper_coil",
})

minetest.clear_craft({
	output = "elepower_dynamics:wound_silver_coil",
})

--TO DO:Add one of these functions for elepower.
--Override fucntion to clear the recipes for technic machines
function clear_technic_recipe(recipe_type, recipe_input_name)
	minetest.after(0.1, function() --This has to be called with a delay for the table to load in.
	    technic.recipes[recipe_type]["recipes"][recipe_input_name] = nil
	end)
end

--[[This function accepts two peramiters, the recipe type and
the name of the input of the recipe you want to clear
available recipe types:
    "grinding"
    "alloy"
    "extracting"
    "freezing"
    "separating" This one is for the centrifuge.
    "compressing"
    "cooking" This one is for the cooking recipes for the electric furnace but you should just be able to use the minetest.clear_craft to do it too.
The secound peramiter is the name of the recipe you want to override. This is the item name of the item you
put into the machine i.e "default:silver_sandstone" which will clear the recipe that uses the silver sandstone as an input.
Example: 
    clear_technic_recipe("grinding", "defualt:silver_sandstone") 
This will clear the grinding recipe that usese the "defualt:silver_sandstone" item as an input.
For alloy recipes this is different as you need to have as the names of the inputs like this:
    clear_technic_recipe("alloy", "input1/input2") 
Example:
    clear_technic_recipe("alloy", "technic:coal_dust/technic:raw_latex") 
This will clear the alloy recipe with the inputs of technic:coal_dust and technic:raw_latex
]]
