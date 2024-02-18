
RECIPE.name = "Schematic: 'Makeshift Assault Rifle'."
RECIPE.description = "*The schematic before you has a list of instructions that you need to follow to craft this item*."
RECIPE.model = "models/mosi/fallout4/props/junk/technicaldocument.mdl"
RECIPE.category = "[-Gunsmithing-]"
RECIPE.requirements = {
	["craftingscrews"] = 3,
        ["craftingweaponparts"] = 4,
        ["craftinggears"] = 2,
        ["craftingwood"] = 2,
        ["craftingsteel"] = 8,
}
RECIPE.results = {
	["machinegun"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a weapons workbench."
end)
