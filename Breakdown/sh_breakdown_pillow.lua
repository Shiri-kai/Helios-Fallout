RECIPE.name = "Breakdown: 'Pillow'."
RECIPE.description = "A page in your wasteland guide shows you a recipe for dismantling this item to perfection."
RECIPE.model = "models/mosi/fallout4/props/junk/blueprint.mdl"
RECIPE.category = "[-Scrap-]"
RECIPE.requirements = {
    ["pillow"] = 1
}
RECIPE.results = {
    ["craftingcloth"] = {["min"] = 3, ["max"] = 5}
}
RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
    for , v in pairs(ents.FindByClass("ix_station_workbench")) do
        if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
            return true
        end
    end

    return false, "You need to be near a workbench."
end)