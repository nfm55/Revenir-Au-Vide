#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;
import mods.ItemStages.removeItemStage;
import scripts.Util.stageUtil;

static stageItemMap as IIngredient[][string] = {
	"elf" : [
		<botania:manaresource:7>,
		<botania:manaresource:8>,
		<botania:manaresource:9>,
		<botania:spreader:2>,
		<botania:rune:4>,
		<botania:rune:5>,
		<botania:rune:6>,
		<botania:rune:7>
	],
	"gaia" : [
		<botania:pylon:2>,
		<botania:spreader:3>,
		<botania:rune:15>,
		<botania:rune:13>,
		<botania:rune:10>,
		<botania:rune:14>,
		<botania:rune:12>,
		<botania:rune:11>,
		<botania:rune:9>
	],
	"blood" : [

	],
	"qi_extract" : [
		<bloodmagic:soul_snare:0>,
		<bloodmagic:sentient_sword:0>,
		<bloodmagic:sentient_axe:0>,
		<bloodmagic:sentient_pickaxe:0>,
		<bloodmagic:sentient_shovel:0>,
		<bloodmagic:sentient_bow:0>,
		<bloodmagic:monster_soul>,
		<bloodmagic:soul_gem>,
		<bloodmagic:soul_forge>
	],
	"qi_cohesion" : [
		<bloodmagic:blood_shard>,
		<bloodmagic:bound_sword>,
		<bloodmagic:bound_axe>,
		<bloodmagic:bound_pickaxe>,
		<bloodmagic:bound_shovel>
		//<bloodmagic:bloodmagic:bound_bow>
	],
	"ceremony_to_understand" : [
		<bloodmagic:ritual_controller>,
		<bloodmagic:ritual_stone>,
		<bloodmagic:activation_crystal>,
		<bloodmagic:inscription_tool>,
		<bloodmagic:ritual_diviner>
	],
	"tinker" : [

	],
	"mineral_analysis" : [
		<tconstruct:ore:0>,
		<tconstruct:ore:1>,
		<tconstruct:ingots:0>,
		<tconstruct:ingots:1>,
		<tconstruct:ingots:2>
	],
	"engineering" : [

	],
	"fuel_revolution" : [
		<immersiveengineering:stone_decoration:10>,
		<immersiveengineering:stone_decoration:1>
	],
	"building_structure" : [
		<immersiveengineering:stone_decoration:2>,
		//<immersivetech:stone_decoration:0>
	],
};

for stage , items in stageItemMap{
	for item in items{
		stageUtil.setRecipeStageByItem(stage , item);
	}
}
