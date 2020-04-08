#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;
import mods.ItemStages.removeItemStage;

var allStages as string[] = [

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
///////////////////////////////////////////
var modsStageOne as string[] = [
	"botanicadds",
	"botanianeedsit",
	//"immersiveengineering",
	"extendedcrafting",
	//"bloodmagic",
	"modularmachinery",
	"modulardiversity",
	"akashictome",
	"tconstruct",
];

for mod in modsStageOne{

	mods.ItemStages.stageModItems("one", mod);
	Recipes.setRecipeStageByMod("one", mod);

}
///////////////////////////////////////////

val itemsStageElf as IIngredient[] = [
	<botania:manaresource:7>,
	<botania:manaresource:8>,
	<botania:manaresource:9>,
	<botania:spreader:2>,
	<botania:rune:4>,
	<botania:rune:5>,
	<botania:rune:6>,
	<botania:rune:7>

];

for item in itemsStageElf{
	addItemStage("elf", item);
}

////////////////////////////////////////////

var itemStageGaia as IIngredient[] = [
	<botania:pylon:2>,
	<botania:spreader:3>,
	<botania:rune:15>,
	<botania:rune:13>,
	<botania:rune:10>,
	<botania:rune:14>,
	<botania:rune:12>,
	<botania:rune:11>,
	<botania:rune:9>
];

for item in itemStageGaia{
	addItemStage("gaia", item);
}

///////////////////////////////////////////

var modsStageBlood as string[] = [
	"bloodmagic"
];

for mod in modsStageBlood{

	mods.ItemStages.stageModItems("blood", mod);
	Recipes.setRecipeStageByMod("blood", mod);
}

var itemStageBlood as IIngredient[] = [

];

for item in itemStageBlood{
	addItemStage("blood", item);
}

var itemStageQi_extract as IIngredient[] = [
	<bloodmagic:soul_snare:0>,
	<bloodmagic:sentient_sword:0>,
	<bloodmagic:sentient_axe:0>,
	<bloodmagic:sentient_pickaxe:0>,
	<bloodmagic:sentient_shovel:0>,
	<bloodmagic:sentient_bow:0>,
	<bloodmagic:monster_soul>,
	<bloodmagic:soul_gem>,
	<bloodmagic:soul_forge>
];

for item in itemStageQi_extract{
	addItemStage("qi_extract", item);
}

var itemStageQi_cohesion as IIngredient[] = [
	<bloodmagic:blood_shard>,
	<bloodmagic:bound_sword>,
	<bloodmagic:bound_axe>,
	<bloodmagic:bound_pickaxe>,
	<bloodmagic:bound_shovel>
	//<bloodmagic:bloodmagic:bound_bow>

];

for item in itemStageQi_cohesion{
	addItemStage("qi_cohesion", item);
}

var itemStageCeremony_to_understand as IIngredient[] = [
	<bloodmagic:ritual_controller>,
	<bloodmagic:ritual_stone>,
	<bloodmagic:activation_crystal>,
	<bloodmagic:inscription_tool>,
	<bloodmagic:ritual_diviner>
];

for item in itemStageCeremony_to_understand{
	addItemStage("ceremony_to_understand", item);
}


///////////////////////////////////////////

var modsStageTinker as string[] = [
	"tconstruct"
];

for mod in modsStageTinker{

	mods.ItemStages.stageModItems("tinker", mod);
	Recipes.setRecipeStageByMod("tinker", mod);
}

var itemStageTinker as IIngredient[] = [
	
];

for item in itemStageTinker{
	addItemStage("tinker", item);
}

var itemStageMineral_analysis as IIngredient[] = [
	<tconstruct:ore:0>,
	<tconstruct:ore:1>,
	<tconstruct:ingots:0>,
	<tconstruct:ingots:1>,
	<tconstruct:ingots:2>,
];

for item in itemMineral_analysis{
	addItemStage("mineral_analysis", item);
}
///////////////////////////////////////////

var modsStageEngineering as string[] = [
	"immersiveengineering"
];

for mod in modsStageEngineering{

	mods.ItemStages.stageModItems("engineering", mod);
	Recipes.setRecipeStageByMod("engineering", mod);
}

var itemStageEngineering as IIngredient[] = [
	
];

for item in itemStageEngineering{
	addItemStage("engineering", item);
}

var itemStageFuel_revolution as IIngredient[] = [
	<immersiveengineering:stone_decoration:10>,
	<immersiveengineering:stone_decoration:1>
];

for item in itemStageFuel_revolution{
	addItemStage("fuel_revolution", item);
}


var modsStageBuilding_structure as string[] = [
	"immersivepetroleum",
	"immersivetech"
];

for mods in modStageBuilding_structure{
	mods.ItemStages.stageModItems("building_structure", mod);
	Recipes.setRecipeStageByMod("building_structure", mod);
}

var itemStageBuilding_structure as IIngredient[] = [
	<immersiveengineering:stone_decoration:2>,
	//<immersivetech:stone_decoration:0>
];

for item in itemStageBuilding_structure{
	addItemStage("building_structure", item);
}
