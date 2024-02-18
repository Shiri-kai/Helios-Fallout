
RECIPE.name = "Schematic: 'Bandage'."
RECIPE.description = "*A page in your wasteland guide shows you a recipe for crafting this item.*."
RECIPE.model = "models/mosi/fallout4/props/junk/blueprint.mdl"
RECIPE.category = "[-Medical-]"
RECIPE.requirements = {
	["craftingcloth"] = 1
}
RECIPE.results = {
	["bandage"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("You need to be near a basic bench.")
end)
