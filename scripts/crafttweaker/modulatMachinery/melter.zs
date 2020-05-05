#priority 800
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
//import crafttweaker.OreDictEntry;

var machineName = "melter";

static recipes as ILiquidStack[IOreDictEntry] = {
    <ore:ingotIron> : <fluid:iron>*144,
    <ore:ingotGold> : <fluid:gold>*144,
    <ore:ingotCopper> : <fluid:copper>*144,
    <ore:ingotTin> : <fluid:tin>*144,
    <ore:ingotSilver> : <fluid:silver>*144,
    <ore:ingotLead> : <fluid:lead>*144,
    <ore:ingotAluminum> : <fluid:aluminum>*144,
    <ore:ingotNickel> : <fluid:nickel>*144
};
for ingot_input , fluid_output  in recipes{
    mods.modularmachinery.RecipeBuilder.newBuilder(machineName+"_"+ingot_input.name, machineName, 200)
    	.addEnergyPerTickInput(500)
    	.addItemInput(ingot_input)
    	.addFluidOutput(fluid_output)
    	.build();
}