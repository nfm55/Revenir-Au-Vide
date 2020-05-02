#priority 800
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static machine_name as string = "melter";

static partTypes as string[] = [
    "pickaxe",
    "axe",
    "sword",
    "shovel",
    "hoe"
];

static metalMap as ILiquidStack[string] = {
    Iron : <fluid:iron>,
    Copper : <fluid:copper>,
    Tin : <fluid:tin>,
    Bronze : <fluid:bronze>,
    Aluminum : <fluid:aluminum>,
    Gold : <fluid:gold>,
    Lead : <fluid:lead>,
    Nickel : <fluid:nickel>,
    Electrum : <fluid:electrum>,
    Silver : <fluid:silver>
};

static recipes as ILiquidStack[IItemStack] = {
    <minecraft:iron_ingot> : <fluid:iron>*144,
    <minecraft:gold_ingot> : <fluid:gold>*144,
    <ore:ingotCopper> : <fluid:copper>*144,
    <ore:ingotTin> : <fluid:tin>*144,
    <ore:ingotSilver> : <fluid:silver>*144,
    <ore:ingotLead> : <fluid:lead>*144,
    <ore:ingotAluminum> : <fluid:aluminum>*144,
    <ore:plateAshenMetal>.firstItem : <fluid:ashen_metal>*144,
    <ore:ingotNickel> : <fluid:nickel>*144
};

function addMelterRecipe(liquid as ILiquidStack, item as IItemStack){
    Melter.add(liquid, item);
    addMelterRecipe(liquid, item);
}

function addMelterRecipe(liquid as ILiquidStack, item as IItemStack){
    for i in 1 to 5{
        var j = (5 - i);
        var num = (pow(4,j - 1));
        mods.modularmachinery.RecipeBuilder.newBuilder(machine_name+(100 - i)+item.name, machine_name, 10*j*j)
            .addItemInput(item*num)
            .addFluidOutput(liquid.definition * (liquid.amount*num))
            .addEmberInput(150*j*j)
            .build();
    }
}

function meltIngots(){
    for metal, liquid in metalMap{
        addMelterRecipe(liquid*144, oreDict.get("ingot"+metal).firstItem);
        addMelterRecipe(liquid*144, oreDict.get("plate"+metal).firstItem);
    }
}

function meltParts(){
    for part in partTypes{
        for metal, liquid in metalMap{
            addMelterRecipe(liquid*288, oreDict.get(part+"Part"+metal).firstItem);
        }
    }
}

function init(){
    for input, output in recipes{
        addMelterRecipe(output,input);
    }
    meltParts();
    meltIngots();
}