
RECIPE.name = "Schematic: 'Bladed Bat'."
RECIPE.description = "*The schematic before you has a list of instructions that you need to follow to craft this item*."
RECIPE.model = "models/mosi/fallout4/props/junk/technicaldocument.mdl"
RECIPE.category = "[-Upgrades-]"
RECIPE.requirements = {
	["craftingsteel"] = 6,
        ["craftingadhesive"] = 2,
        ["baseballbat"] = 5,
}
RECIPE.results = {
	["bladebat"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a weapons workbench."
end)
