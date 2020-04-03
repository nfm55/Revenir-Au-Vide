
#priority 0
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.ICraftingRecipe;

val removingArray = [
	<botania:spreader>,
	<botania:altar>,
	<botania:alfheimportal>,
] as IItemStack[];

for items in removingArray{
    recipes.remove(items);
}