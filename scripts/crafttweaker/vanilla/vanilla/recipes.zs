#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;

//虚空物质
static vm as IItemStack = <contenttweaker:void_matter>;
//压缩虚空物质
val cvm = <contenttweaker:compressed_void_matter>;
//二重压缩虚空物质
val dcvm = <contenttweaker:double_compressed_void_matter>;

//虚空物质损耗耐久 vmd(耐久损耗)
function vmd(damage as int) as IIngredient{
  val vmd as IIngredient = vm.anyDamage().transformDamage(damage);
  return vmd;
}

//有序合成表
val shapedRecipes as IIngredient[][][IItemStack] = {
    //岩浆桶
    <minecraft:lava_bucket> : [
        [vmd(30) , vmd(30) , vmd(30)],
        [vmd(30) , <minecraft:dirt> , vmd(30)], 
        [vmd(30) , vmd(30) , vmd(30)]
    ],
    //水桶
    <minecraft:water_bucket> : [
    	[vmd(30) , vmd(30) , vmd(30)],
    	[vmd(30) , <minecraft:grass> , vmd(30)],
    	[vmd(30) , vmd(30) , vmd(30)]
    ],
    //草（中文意）
    <minecraft:grass> : [
    	[null , null , null],
    	[null , vmd(10) , null],
    	[null , <minecraft:dirt> , null]
    ],
    //金锭
    <minecraft:gold_ingot> : [
    	[vm , <minecraft:iron_ingot> , <minecraft:iron_ingot>],
    	[<minecraft:iron_ingot> , <minecraft:iron_ingot> , null],
    	[null , null , null]
    ],
    //矿工指环
    <baubles:ring> : [
    	[vmd(1) , vmd(1) , vmd(1)],
    	[vmd(1) , null , vmd(1)],
    	[vmd(1) , vmd(1) , vmd(1)]
    ],
    //末影珍珠
    <minecraft:ender_pearl> : [
    	[null , <minecraft:diamond> , null],
    	[<minecraft:diamond> , vm , <minecraft:diamond>],
    	[null , <minecraft:diamond> , null]
    ],
    //魔力发射器
    <botania:spreader> : [
    	[<botania:livingwood> , <botania:livingwood> , <botania:livingwood>],
    	[vm , <minecraft:gold_ingot> , null],
    	[<botania:livingwood> , <botania:livingwood> , <botania:livingwood>]
    ],
    //符文祭坛
    <botania:altar> : [
    	[<botania:livingrock0slab> , vm , <botania:livingrock0slab>],
    	[null , <botania:livingrock> , null],
    	[<botania:livingrock> , <botania:livingrock> , <botania:livingrock>]
    ],
    //精灵门核心
    <botania:alfheimportal> : [
    	[<botania:livingwood> , cvm , <botania:livingwood>],
    	[cvm , <botania:livingwood:5> , cvm],
    	[<botania:livingwood> , cvm , <botania:livingwood>]
    ],
    //甘蔗
    <minecraft:reeds> : [
    	[vm , null , vm],
    	[<minecraft:grass> , null , <minecraft:grass>],
    	[<minecraft:sand> , null , <minecraft:sand>]
    ],
    <botania:blacklotus:1> : [
    	[<minecraft:coal_block> , null , <minecraft:coal_block>],
    	[<minecraft:coal_block> , <contenttweaker:double_compressed_void_matter> , <minecraft:coal_block>],
    	[<botania:livingwood> , <minecraft:coal_block> , <botania:livingwood>]
    ],
    //铁矿石
    <minecraft:iron_ore> * 4 : [
    	[<minecraft:cobblestone> , <minecraft:cobblestone> , <minecraft:cobblestone>],
    	[<minecraft:cobblestone> , vmd(50) , <minecraft:cobblestone>],
    	[<minecraft:cobblestone> , <minecraft:cobblestone> , <minecraft:cobblestone>]
    ],
    //虚空物质
    <contenttweaker:void_matter> * 2 : [
    	[<minecraft:cobblestone> , <minecraft:grass> , <minecraft:cobblestone>],
    	[<minecraft:cobblestone> , <minecraft:log> , <minecraft:cobblestone>],
    	[<minecraft:cobblestone> , <minecraft:grass> , <minecraft:cobblestone>]
    ],
    //萤石
    <minecraft:glowstone> * 4 : [
    	[<minecraft:yellow_flower> , <minecraft:yellow_flower> , <minecraft:yellow_flower>],
    	[<minecraft:yellow_flower> , vm , <minecraft:yellow_flower>],
    	[<minecraft:yellow_flower> , <minecraft:yellow_flower> , <minecraft:yellow_flower>]
    ],
    //红石块
    <minecraft:redstone_block> * 4 : [
    	[<minecraft:red_flower> , <minecraft:red_flower> , <minecraft:red_flower>],
    	[<minecraft:red_flower> , vm , <minecraft:red_flower>],
    	[<minecraft:red_flower> , <minecraft:red_flower> , <minecraft:red_flower>]
    ],
    //骨头
    <minecraft:bone> * 16 : [
    	[vm , null , null],
    	[null , vm , null],
    	[null , null , vm]
    ],
    //活石
    <botania:livingrock> * 4 : [
    	[<minecraft:stone> , <minecraft:stone> , <minecraft:stone>],
    	[<minecraft:stone> , cvm , <minecraft:stone>],
    	[<minecraft:stone> , <minecraft:stone> , <minecraft:stone>]
    ],
    //活木
    <botania:livingwood> * 4 : [
    	[<minecraft:log> , <minecraft:log> , <minecraft:log>],
    	[<minecraft:log> , cvm , <minecraft:log>],
    	[<minecraft:log> , <minecraft:log> , <minecraft:log>]
    ],
    //沙子
    <minecraft:sand> * 2 : [
    	[<minecraft:grass> , <minecraft:grass> , <minecraft:grass>],
    	[<minecraft:grass> , vm , <minecraft:grass>],
    	[<minecraft:grass> , <minecraft:grass> , <minecraft:grass>]
    ],
    //煤炭块
    <minecraft:coal_block> * 4 : [
    	[null , <botania:dye:15> , null],
    	[<botania:dye:15> , <contenttweaker:void_matter> , <botania:dye:15>],
    	[null , <botania:dye:15> , null]
    ],
    //青金石块
    <minecraft:lapis_block> * 16 : [
    	[null , <minecraft:red_flower:1> , null],
    	[<minecraft:red_flower:1> , vm , <minecraft:red_flower:1>],
    	[null , <minecraft:red_flower:1> , null]
    ],
    //钻石!
    <minecraft:diamond> : [
        [vm , <minecraft:gold_ingot> , <minecraft:gold_ingot>],
        [<minecraft:gold_ingot> , <minecraft:gold_ingot> , null]
    ],
    //树苗
    <minecraft:sapling> : [
        [vmd(10) , vmd(10) , vmd(10)]
    ],
    //原木
    <minecraft:log> * 8 : [
        [null , vmd(10)],
        [vmd(10) , null]
    ],
    //压缩虚空物质
    <contenttweaker:compressed_void_matter> : [
        [vm , vm , vm],
        [vm , vm , vm],
        [vm , vm , vm]
    ],
    //双重压缩虚空物质
    <contenttweaker:double_compressed_void_matter> : [
        [cvm , cvm , cvm],
        [cvm , cvm , cvm],
        [cvm , cvm , cvm]
    ]

};

//无序合成表
val shapelessRecipesMap as IItemStack[][IIngredient] = {
    //泥土
    <minecraft:dirt> * 4 : [vm]
};

//批量添加有序合成
for output , inputs in shapedRecipes{
    recipes.addShaped(output , inputs);
}

//批量添加无序合成
for output , inputs in shapelessRecipesMap{
    recipes.addShapeless(output , inputs);
}








