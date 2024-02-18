RECIPE.name = "Schematic: 'Plasma Pistol MK1'."
RECIPE.description = "*The schematic before you has a list of instructions that you need to follow to craft this item*."
RECIPE.model = "models/mosi/fallout4/props/junk/technicaldocument.mdl"
RECIPE.category = "[-Advanced Energy-]"
RECIPE.requirements = {
        ["craftingweaponparts"] = 1,
        ["craftinggears"] = 1,
        ["craftingcircuitry"] = 1,
        ["craftingcrystal"] = 2,
        ["craftingsteel"] = 3,
        ["craftingnuclearmaterial"] = 1,
}
RECIPE.results = {
	["plasmapistol"] = 1
}
RECIPE.flag = "1"

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a weapons workbench."
end)