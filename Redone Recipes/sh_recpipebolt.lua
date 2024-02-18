
RECIPE.name = "Schematic: 'Makeshift Pipe Bolt Action Rifle'."
RECIPE.description = "*The schematic before you has a list of instructions that you need to follow to craft this item*."
RECIPE.model = "models/mosi/fallout4/props/junk/technicaldocument.mdl"
RECIPE.category = "[-Gunsmithing-]"
RECIPE.requirements = {
	["craftingscrews"] = 2,
        ["craftingweaponparts"] = 2,
        ["craftingleather"] = 1,
        ["craftingwood"] = 2,
        ["craftingsteel"] = 5,
}
RECIPE.results = {
	["pipeboltscope"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a weapons workbench."
end)
