#priority 2000
#loader contenttweaker
//导包
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.IItemRightClick;
	import mods.contenttweaker.Commands;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.Material;

//物品列表
var items as string[] = [
	"compressed_void_matter",
	"double_compressed_void_matter",
	"elf_will",
	"knowledge_of_craftmen",
	"Connection_of_the_world",
	"Easter_eggs",
	"strange_things",
];

//物品注册
for item in items{
	VanillaFactory.createItem(item).register();
}
val item = VanillaFactory.createItem("void_matter");
item.maxStackSize = 1;
item.rarity = "EPIC";
item.glowing = true;
item.maxDamage = 100;
item.toolClass = "pickaxe";
item.toolLevel = 0;
item.register();