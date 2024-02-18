RECIPE.name = "Breakdown: 'Camera'."
RECIPE.description = "A page in your wasteland guide shows you a recipe for dismantling this item to perfection."
RECIPE.model = "models/mosi/fallout4/props/junk/blueprint.mdl"
RECIPE.category = "[-Scrap-]"
RECIPE.requirements = {
    ["camera"] = 1
}
RECIPE.results = {
    ["craftingcrystal"] = {["min"] = 1, ["max"] = 2},
    ["craftinggears"] = {["min"] = 1, ["max"] = 2},
    ["craftingsprings"] = {["min"] = 1, ["max"] = 2}
}
RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
    for , v in pairs(ents.FindByClass("ix_station_workbench")) do
        if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
            return true
        end
    end

    return false, "You need to be near a workbench."
end)