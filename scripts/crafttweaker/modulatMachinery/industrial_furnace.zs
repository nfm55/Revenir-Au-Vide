#priority 800
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.IFurnaceRecipe;
//import crafttweaker.OreDictEntry;

var machineName = "industrial_furnace";

for recipes in furnace.all{
    mods.modularmachinery.RecipeBuilder.newBuilder(machineName+"_"+recipes.commandString, machineName, 25)
    	.addEnergyPerTickInput(80)
    	.addItemInput(recipes.input)
    	.addItemOutput(recipes.output)
    	.build();
}