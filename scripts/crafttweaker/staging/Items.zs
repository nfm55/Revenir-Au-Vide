#priority 699

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;
import mods.ItemStages.removeItemStage;
import scripts.Util.stageUtil;

static stageItemMap as IItemStack[][string] = {
	"one" : [
		<contenttweaker:the_rune_of_dawn>,
		<contenttweaker:the_rune_of_twilight>,
		<contenttweaker:rune_of_chaos>
	],
	"elf" : [
		<contenttweaker:rune_of_despair>
	],
	"blood" : [
		<contenttweaker:rune_powder_of_fire>,
		<contenttweaker:rune_powder_of_water>,
		<contenttweaker:rune_powder_of_earth>,
		<contenttweaker:rune_powder_of_wind>,
		<contenttweaker:rune_powder_of_dawn>,
		<contenttweaker:rune_powder_of_twilight>,
	],
	"tinker" : [

	],
	
	"engineering" : [

	]
	
};


static stageItemUpgradeMap as IItemStack[][string] = {
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
	/*"qi_cohesion" : [
		<bloodmagic:blood_shard:0>,
		<bloodmagic:component:8>
		//<bloodmagic:bloodmagic:bound_bow>
	],
	"ceremony_to_understand" : [
		<bloodmagic:ritual_controller>,
		<bloodmagic:ritual_stone>,
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
	],*/
	"soul_research" : [
		<bloodmagic:soul_snare:0>,
		<bloodmagic:monster_soul:0>,
		<bloodmagic:monster_soul:1>,
		<bloodmagic:monster_soul:2>,
		<bloodmagic:monster_soul:3>,
		<bloodmagic:monster_soul:4>,
		<bloodmagic:sentient_sword>,
		<bloodmagic:sentient_axe>,
		<bloodmagic:sentient_pickaxe>,
		<bloodmagic:sentient_shovel>,
		<bloodmagic:sentient_bow>,
		<bloodmagic:sentient_armour_gem>,
		<bloodmagic:soul_gem:0>.withTag({}),
		<bloodmagic:soul_gem:1>.withTag({}),
		<bloodmagic:soul_gem:2>.withTag({}),
		<bloodmagic:soul_gem:3>.withTag({}),
		<bloodmagic:soul_gem:4>.withTag({}),
		<bloodmagic:soul_forge>
	],
	"alchemy" : [
		<bloodmagic:component:0>,
		<bloodmagic:component:1>,
		<bloodmagic:component:2>,
		<bloodmagic:component:3>,
		<bloodmagic:component:4>,
		<bloodmagic:component:5>,
		<bloodmagic:component:6>,
		<bloodmagic:component:7>,
		<bloodmagic:component:8>,
		<bloodmagic:component:9>,
		<bloodmagic:component:10>,
		<bloodmagic:component:11>,
		<bloodmagic:component:12>,
		<bloodmagic:component:13>,
		<bloodmagic:component:14>,
		<bloodmagic:component:15>,
		<bloodmagic:component:16>,
		<bloodmagic:component:17>,
		<bloodmagic:component:18>,
		<bloodmagic:component:19>,
		<bloodmagic:component:20>,
		<bloodmagic:component:21>,
		<bloodmagic:component:22>,
		<bloodmagic:component:23>,
		<bloodmagic:component:24>,
		<bloodmagic:component:25>,
		<bloodmagic:component:26>,
		<bloodmagic:component:27>,
		<bloodmagic:component:28>,
		<bloodmagic:component:29>,
		<bloodmagic:component:30>,
		<bloodmagic:component:31>,
		<bloodmagic:component:32>
	],
	"ceromeny" : [
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
	/*"mineral_analysis" : [
		<tconstruct:ore:0>,
		<tconstruct:ore:1>,
		<tconstruct:ingots:0>,
		<tconstruct:ingots:1>,
		<tconstruct:ingots:2>
	],*/
	"fuel_revolution" : [
		<immersiveengineering:stone_decoration:10>,
		<immersiveengineering:stone_decoration:1>
	],
	"building_structure" : [
		<immersiveengineering:stone_decoration:2>,
		//<immersivetech:stone_decoration:0>
	],
	"smelter" : [
		<tconstruct:materials>,
		<tconstruct:seared_tank>,
		<tconstruct:seared_tank:1>,
		<tconstruct:seared_tank:2>,
		<tconstruct:seared_furnace_controller>,
		<tconstruct:seared_glass>,
		<tconstruct:seared>,
		<tconstruct:seared:1>,
		<tconstruct:seared:2>,
		<tconstruct:seared:3>,
		<tconstruct:seared:4>,
		<tconstruct:seared:5>,
		<tconstruct:seared:6>,
		<tconstruct:seared:7>,
		<tconstruct:seared:8>,
		<tconstruct:seared:9>,
		<tconstruct:seared:10>,
		<tconstruct:seared:11>,
		<tconstruct:smeltery_controller>,
		<tconstruct:faucet>,
		<tconstruct:channel>,
		<tconstruct:casting>,
		<tconstruct:casting:1>,
		<tconstruct:tinker_tank_controller>,
		<tconstruct:smeltery_io>
	]
};
for stage , items in stageItemMap{
	for item in items{
		stageUtil.setItemStageByItem(stage , item);
	}
}
for stage , items in stageItemUpgradeMap{
	for item in items{
		stageUtil.setItemStageUpgrade(stage , item);
	}
}