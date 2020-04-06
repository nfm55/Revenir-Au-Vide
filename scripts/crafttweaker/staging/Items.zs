#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;
import mods.ItemStages.addItemStage;
import mods.ItemStages.removeItemStage;

var allStages as string[] = [

	"one",
	"Elf",
	"Gaia",
	"Blood",
	"Tinker",
	"Engineering",
	"Two",
	"Thermal",
	"EIO",
	"Mek",
	
	"Banned"

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
	addItemStage("Elf", item);
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

for item in itemsStageGaia{
	addItemStage("Gaia", item);
}

///////////////////////////////////////////

var modsStageBlood as string[] = [
	"bloodmagic"
];

for mod in modsStageBlood{

	mods.ItemStages.stageModItems("Blood", mod);
	Recipes.setRecipeStageByMod("Blood", mod);
}

var itemStageBlood as IIngredient[] = [

];

for item in itemsStageBlood{
	addItemStage("Blood", item);
}

var itemStageQi_extract as IIngredient[] = [
	<bloodmagic:soul_snare:0>,
	<bloodmagic:sentient_sword:0>,
	<bloodmagic:sentient_axe:0>,
	<bloodmagic:sentient_pickaxe:0>,
	<bloodmagic:sentient_shovel:0>,
	<bloodmagic:sentient_bow:0>,
	<bloodmagic:monster_soul>,
	<bloodmagic:soul_gem>
];

for item in itemsStageQi_extract{
	addItemStage("qi_extract", item);
}

///////////////////////////////////////////

var modsStageTinker as string[] = [
	"tconstruct"
];

for mod in modsStageTinker{

	mods.ItemStages.stageModItems("Tinker", mod);
	Recipes.setRecipeStageByMod("Tinker", mod);
}

var itemStageTinker as IIngredient[] = [
	
];

for item in itemsStageTinker{
	addItemStage("Tinker", item);
}

///////////////////////////////////////////

var modsStageEngineering as string[] = [
	"immersiveengineering"
];

for mod in modsStageEngineering{

	mods.ItemStages.stageModItems("Engineering", mod);
	Recipes.setRecipeStageByMod("Engineering", mod);
}

var itemStageEngineering as IIngredient[] = [
	
];

for item in itemsStageEngineering{
	addItemStage("Engineering", item);
}

var modsStageBuilding_structure as string[] = [
	"immersivepetroleum",
	"immersivetech"
];

for mods in modsStageBuilding_structure{
	mods.ItemStages.stageModItems("building_structure", mod);
	Recipes.setRecipeStageByMod("building_structure", mod);
}

var itemStageBuilding_structure as IIngredient[] = [
	<immersiveengineering:stone_decoration:2>,
	//<immersivetech:stone_decoration:0>
];

for item in itemsStageBuilding_structure{
	addItemStage("building_structure", item);
}
///////////////////////////////////////////

/*
var modsStageTwo as string[] = [
	"botania",
	"silentgems",
	"immersiveengineering",
	"snad",
	"naturescompass",
	"ironchest",
	"storagedrawers",
	"harvestcraft",
	"cookingforblockheads",
	"forge",
	"microblockcbe",
	"baubles",
	"extendedcrafting",
	"flopper",
	"thermalfoundation"
];

for mod in modsStageTwo{

	mods.ItemStages.stageModItems("two", mod);
	Recipes.setRecipeStageByMod("two", mod);
}

Recipes.setRecipeStageByMod("two", "minecraft");

var modsStageThree as string[] = [
	"twilightforest",
	"naturesaura",
	"bloodmagic",
	"torchmaster",
	"waystones",
	"bibliocraft",
	"akashictome",
	"base",
	"modularmachinery",
	"modulardiversity",
	"guideapi",
	"mcjtylib",
	"translocators",
	"xpt",
	"mcjtylib_ng"

];

for mod in modsStageThree{

	mods.ItemStages.stageModItems("three", mod);
	Recipes.setRecipeStageByMod("three", mod);
}

var modsStageFour as string[] = [
	"embers",
	"actuallyadditions",
	"enderio",
	"enderiobase",
	"enderioconduits",
	"forestry",
	"deepmoblearning",
	"deepmoblearningbm",
	"tanaddons",
	"scannable",
	"elevatorid",
	"rangedpumps",
	"arcanearchives",
	"buildinggadgets",
	"enderioconduitsappliedenergistics",
	"appliedenergistics2",
	"simplyjetpacks",
	"extrautils2",
	"soot",
	"carryon"
];

addItemStage("four", <extracells:pattern.fluid>.withTag({Fluid:{}}));
addItemStage("four",<bloodmagic:upgrade_tome>.withTag({}));

for mod in modsStageFour{

	mods.ItemStages.stageModItems("four", mod);
	Recipes.setRecipeStageByMod("four", mod);
}

var modsStageFive as string[] = [
	"astralsorcery",
	"cofhworld",
	"thermalexpansion",
	"compactmachines3",
	"xreliquary",
	"wct",
	"enderstorage",
	"enderiomachines",
	"enderiointegrationforestry",
	"ae2wtlib",
	"wpt",
	"advancedrocketry",
	"libvulpes"

];

for mod in modsStageFive{

	mods.ItemStages.stageModItems("five", mod);
	Recipes.setRecipeStageByMod("five", mod);
	
}

removeItemStage(<thermalexpansion:capacitor>.withTag({Energy: 1000000}));
removeItemStage(<thermalexpansion:capacitor:1>.withTag({Energy: 4000000}));

removeItemStage(<thermalexpansion:capacitor>);
removeItemStage(<thermalexpansion:capacitor:1>);

addItemStage("four",<thermalexpansion:capacitor>);
addItemStage("four",<thermalexpansion:capacitor:1>);

var modsStageSix as string[] = [
	"mekanism",
	"mekanismgenerators",
	"nuclearcraft",
	"environmentaltech",
	"fluxnetworks",
	"extracells",
	"ae2stuff",
	"xnet",
	"valkyrielib",
	"packagedauto",
	"packagedexcrafting",
	"thermaldynamics"
	
];

for mod in modsStageSix{

	mods.ItemStages.stageModItems("six", mod);
	Recipes.setRecipeStageByMod("six", mod);
	
}

removeItemStage(<item:nuclearcraft:gem_dust>);
removeItemStage(<item:nuclearcraft:gem_dust:2>);
removeItemStage(<mekanism:dust:2>);
removeItemStage(<mekanism:ingot:1>);

var modsStageAlpha as string[] = [
	"projecte",
	"draconicevolution"
];

for mod in modsStageAlpha{

	mods.ItemStages.stageModItems("alpha", mod);
	Recipes.setRecipeStageByMod("alpha", mod);
	
}

var modsStageBeta as string[] = [
	"touhou_little_maid",
	"teastory",
	"cuisine"
];

for mod in modsStageBeta{

	mods.ItemStages.stageModItems("beta", mod);
	Recipes.setRecipeStageByMod("beta", mod);
	
}

removeItemStage(<immersiveengineering:stone_decoration:2>);
removeItemStage(<enderio:item_material:51>);

val itemsStageFour as IIngredient[] = [
	<immersiveengineering:stone_decoration:2>,
	<contenttweaker:transistor_bad>,
	<contenttweaker:transistor_fine>,
	<contenttweaker:unpolished_slice_monosilicon>,
	<contenttweaker:advanced_motioner>,
	<contenttweaker:advanced_processor>,
	<contenttweaker:bad_machine_core>,
	<contenttweaker:baseplate_aluminum>,
	<contenttweaker:baseplate_gold>,
	<contenttweaker:baseplate_iridium>,
	<contenttweaker:basic_circuit>,
	<contenttweaker:basic_motioner>,
	<contenttweaker:basic_processor>,
	<contenttweaker:brain_chip>,
	<contenttweaker:bulk_of_plastic>,
	<contenttweaker:charged_gaiya_crystal>,
	<contenttweaker:chlorinized_slice_monosilicon>,
	<contenttweaker:dark_gaiya_crystal>,
	<contenttweaker:dark_gaiya_crystal_unpolished>,
	<contenttweaker:gaiya_stabilizer>,
	<contenttweaker:ic_processed>,
	<contenttweaker:ic_unprocessed>,
	<contenttweaker:ic_wafer>,
	<contenttweaker:magfusive_crystal>,
	<contenttweaker:magic_motor>,
	<contenttweaker:medium_motioner>,
	<contenttweaker:processor_base>,
	<contenttweaker:reinforced_machine_core>,
	<contenttweaker:resistor_bad>,
	<contenttweaker:resistor_fine>,
	<contenttweaker:rod_monocrystal_silicon>,
	<contenttweaker:rubber_plate>,
	<contenttweaker:silicon_reinforced>,
	<contenttweaker:silicon_slice>,
	<contenttweaker:slice_monosilicon>,
	<contenttweaker:slice_silicon_compressed>,
	<contenttweaker:slice_silicon_rough>,
	<contenttweaker:soso_machine_core>
];
val itemsStageFive as IIngredient[] = [
	<enderio:item_material:51>,
	<contenttweaker:ultra_machine_core>,
	<contenttweaker:lunar_essence>,
	<contenttweaker:iridium_osmium_ingot>,
	<contenttweaker:integrated_calculation_module>,
	<contenttweaker:integrated_calculation_module_unprocessed>,
	<contenttweaker:magic_calculator_unpowered>,
	<contenttweaker:magic_machine_hull>,
	<contenttweaker:magic_calculator>,
	<contenttweaker:star_rune>,
	<contenttweaker:strong_motor>,
	<contenttweaker:strong_motor_unprocessed>,
	<contenttweaker:meteor_bait>,
	<contenttweaker:dust_small_osmium>
];
val itemsStageSix as IIngredient[] = [
	<contenttweaker:void_machine_core>,
	<contenttweaker:super_calculation_module>,
	<contenttweaker:orders_truth>,
	<contenttweaker:neutron>,
	<contenttweaker:entropy>,
	<contenttweaker:compress_crystaltine>,
	<contenttweaker:ultracondium_crystal>,
	<contenttweaker:ultimate_motioner>,
	<contenttweaker:ether_alloy_ingot>,
	<actuallyadditions:block_laser_relay_fluids>
];
val itemsStageAlpha as IIngredient[] = [
	<contenttweaker:auriminium>,
	<contenttweaker:enigarium>,
	<contenttweaker:technium>,
	<contenttweaker:enigtechnium>,
	<contenttweaker:will_of_world_tree>,
	<contenttweaker:pity_from_nature>,
	<contenttweaker:solidified_energy>,
	<contenttweaker:essencial_blood>,
	<contenttweaker:forbidden_life_essence>,
	<contenttweaker:moon_blade>,
	<contenttweaker:zhishu_machine_core>,
	<contenttweaker:energetic_clathrate>,
	<contenttweaker:resonance_heatsource>,
	<contenttweaker:energetic_shard>,
	<contenttweaker:depleted_heatsource>
];

for item in itemsStageAlpha{
	addItemStage("alpha", item);
}

for item in itemsStageSix{
	addItemStage("six", item);
}

for item in itemsStageFive{
	addItemStage("five", item);
}

for item in itemsStageFour{
	addItemStage("four", item);
}

mods.ItemStages.removeItemStage(<embers:ore_quartz>);

mods.ItemStages.stageTooltip("alpha", "EMC:");

removeItemStage(<minecraft:spawn_egg>.withTag({EntityTag: {id: "touhou_little_maid:entity.passive.maid"}}));
addItemStage("beta",<minecraft:spawn_egg>.withTag({EntityTag: {id: "touhou_little_maid:entity.passive.maid"}}));

val bannedArray = [
	
] as IItemStack[];

for bannedItems in bannedArray{
	removeItemStage(bannedItems);
	addItemStage("default",bannedItems);
}
