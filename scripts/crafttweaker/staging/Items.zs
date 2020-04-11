#priority 700

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;
import mods.ItemStages.removeItemStage;
import scripts.Util.stageUtil;

static stageItemMap as IItemStack[][string] = {
	"one" : [
		<contenttweaker:the_rune_of_dawn>,
		<contenttweaker:the_rune_of_twilight>
	],
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
		<contenttweaker:rune_powder_of_fire>,
		<contenttweaker:rune_powder_of_water>,
		<contenttweaker:rune_powder_of_earth>,
		<contenttweaker:rune_powder_of_wind>,
		<contenttweaker:rune_powder_of_dawn>,
		<contenttweaker:rune_powder_of_twilight>,
	],
	"qi_extract" : [
		<bloodmagic:soul_snare>,
		<bloodmagic:sentient_sword>,
		<bloodmagic:sentient_axe>,
		<bloodmagic:sentient_pickaxe>,
		<bloodmagic:sentient_shovel>,
		<bloodmagic:sentient_bow>,
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
		<bloodmagic:ritual_controller:1>,
		<bloodmagic:ritual_controller:2>,
		<bloodmagic:ritual_stone>,
		<bloodmagic:ritual_stone:1>,
		<bloodmagic:ritual_stone:2>,
		<bloodmagic:ritual_stone:3>,
		<bloodmagic:ritual_stone:4>,
		<bloodmagic:ritual_stone:5>,
		<bloodmagic:ritual_stone:6>,
		<bloodmagic:activation_crystal>,
		<bloodmagic:activation_crystal:1>,
		<bloodmagic:inscription_tool:1>,
		<bloodmagic:inscription_tool:2>,
		<bloodmagic:inscription_tool:3>,
		<bloodmagic:inscription_tool:4>,
		<bloodmagic:inscription_tool:5>,
		<bloodmagic:inscription_tool:6>,
		<bloodmagic:ritual_diviner>,
		<bloodmagic:ritual_diviner:1>,
		<bloodmagic:ritual_diviner:2>
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
		stageUtil.setItemStageByItem(stage , item);
	}
}
