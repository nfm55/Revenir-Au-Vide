#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.ICraftingRecipe;

val removingArray as IItemStack[] = [
    <naturesaura:gold_fiber>
];

for items in removingArray{
    recipes.remove(items);
}
