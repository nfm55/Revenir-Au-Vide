/*
Partial codes by youyihj
Adapted by GOGG
Following the license of CC BY-NC-SA 4.0
*/
#priority 1000

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;

function BlockBuilder(name as string, material as BlockMaterial, sound as SoundType, hardness as float, resis as float, toolcls as string, toollvl as int){
	print("Block about to be added : " + name);
	var cotblock = VanillaFactory.createBlock(name, material);
	cotblock.setBlockHardness(hardness); //硬度
	cotblock.setBlockSoundType(sound); //声音
	cotblock.setBlockResistance(resis); //爆炸抗性
    cotblock.setToolClass(toolcls); //工具类别
    cotblock.setToolLevel(toollvl); //工具等级
	cotblock.register();
}

BlockBuilder("modularity_frame", <blockmaterial:iron>, <soundtype:metal>, 5.0, 50.0, "pickaxe", 2);
ResourceLocation.create("contenttweaker:modularity_frame/modularity_frame");

BlockBuilder("mana_blockcasing", <blockmaterial:iron>, <soundtype:metal>, 5.0, 50.0, "pickaxe", 2);
ResourceLocation.create("contenttweaker:mana_blockcasing/mana_blockcasing");