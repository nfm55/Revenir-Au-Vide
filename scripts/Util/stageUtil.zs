#priority 10000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;
import mods.ItemStages;

static allStages as string[] = [

	"one",
	"elf",
	"gaia",
	"blood",
	"tinker",
	"engineering",
	"two",
	"thermal",
	"eio",
	"mek",
	
	"banned"

];

//用阶段和modid设置mod阶段
function stageTheMod(stage as string , mod as string){
    ItemStages.stageModItems(stage , mod);
	Recipes.setRecipeStageByMod(stage , mod);
}

//用配方ID设置配方阶段
function setRecipeStageByID(stage as string , ID as string){
    Recipes.setRecipeStage(stage , ID);
}

//用配方产物设置配方阶段
function setItemStageByItem(stage as string , item as IItemStack){
    Recipes.setRecipeStage(stage , item);
	ItemStages.addItemStage(stage , item);
}

function setItemStageUpgrade(stage as string , item as IItemStack){
	ItemStages.removeItemStage( item);
	Recipes.setRecipeStage(stage , item);
	ItemStages.addItemStage(stage , item);
}