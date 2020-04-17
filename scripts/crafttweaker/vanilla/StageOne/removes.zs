#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.ICraftingRecipe;

val removingArray as IItemStack[] = [
    <naturesaura:gold_fiber>,
    <botanicadds:gaia_plate>,
    <naturesaura:bottle_two_the_rebottling>,
    <tconstruct:soil>,
    <immersiveengineering:stone_decoration:5>
];

for items in removingArray{
    recipes.remove(items);
}
