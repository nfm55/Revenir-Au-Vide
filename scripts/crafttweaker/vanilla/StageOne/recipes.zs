#priority 800

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;

//blockcasing_mana

val shapedRecipes as IIngredient[][][IItemStack] = {
    <contenttweaker:blockcasing_mana>*2 : [
        [null,<modularmachinery:itemmodularium>,null],
        [<modularmachinery:itemmodularium>,<botania:storage:0>,<modularmachinery:itemmodularium>],
        [null,<modularmachinery:itemmodularium>,null]
    ],
    <contenttweaker:void_block>*2 : [
        [<contenttweaker:void_ingot>,<contenttweaker:void_ingot>,<contenttweaker:void_ingot>],
        [<contenttweaker:void_ingot>,<contenttweaker:void_ingot>,<contenttweaker:void_ingot>],
        [<contenttweaker:void_ingot>,<contenttweaker:void_ingot>,<contenttweaker:void_ingot>]
    ]
};

//无序合成表
val shapelessRecipesMap as IIngredient[][IItemStack] = {
    
};

//批量添加有序合成
for output , inputs in shapedRecipes{
    recipes.addShaped(output , inputs);
}

//批量添加无序合成
for output , inputs in shapelessRecipesMap{
    recipes.addShapeless(output , inputs);
}
