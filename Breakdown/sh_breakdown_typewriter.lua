RECIPE.name = "Breakdown: 'Typewriter'."
RECIPE.description = "A page in your wasteland guide shows you a recipe for dismantling this item to perfection."
RECIPE.model = "models/mosi/fallout4/props/junk/blueprint.mdl"
RECIPE.category = "[-Scrap-]"
RECIPE.requirements = {
    ["typewriter"] = 1
}
RECIPE.results = {
    ["craftinggears"] = {["min"] = 2, ["max"] = 3},
    ["craftingsprings"] = {["min"] = 2, ["max"] = 3},
    ["craftingscrews"] = {["min"] = 1, ["max"] = 2}
}
RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
    for , v in pairs(ents.FindByClass("ix_station_workbench")) do
        if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
            return true
        end
    end

    return false, "You need to be near a workbench."
end)