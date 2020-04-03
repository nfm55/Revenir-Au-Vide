#priority -100
var vm = <contenttweaker:void_matter>.anyDamage();
var cvm = <contenttweaker:compressed_void_matter>;
var dcvm = <contenttweaker:double_compressed_void_matter>;
//岩浆桶
recipes.addShaped(<minecraft:lava_bucket>, [[vm.transformDamage(30), vm.transformDamage(30),vm.transformDamage(30)],[vm.transformDamage(30), <minecraft:dirt>, vm.transformDamage(30)], [vm.transformDamage(30),vm.transformDamage(30), vm.transformDamage(30)]]);
//水桶
recipes.addShaped(<minecraft:water_bucket>, [[vm.transformDamage(30), vm.transformDamage(30),vm.transformDamage(30)],[vm.transformDamage(30), <minecraft:grass>, vm.transformDamage(30)], [vm.transformDamage(30),vm.transformDamage(30), vm.transformDamage(30)]]);
//草（中文意）
recipes.addShaped(<minecraft:grass>, [[null, null, null],[null, vm.transformDamage(10), null], [null, <minecraft:dirt>, null]]);
//树苗
recipes.addShaped(<minecraft:sapling>, [[vm.transformDamage(10),vm.transformDamage(10), vm.transformDamage(10)]]);
//泥土
recipes.addShapeless(<minecraft:dirt> * 4, [vm]);
//钻石!
recipes.addShaped(<minecraft:diamond>, [[vm, <minecraft:gold_ingot>, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <minecraft:gold_ingot>, null]]);
//金锭
recipes.addShaped(<minecraft:gold_ingot>, [[vm, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null], [null, null, null]]);
//铁矿石
recipes.addShaped(<minecraft:iron_ore> * 4, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, vm.transformDamage(50), <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
//虚空物质
recipes.addShaped(<contenttweaker:void_matter> * 2, [[<minecraft:cobblestone>, <minecraft:grass>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <minecraft:log>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:grass>, <minecraft:cobblestone>]]);
//原木
recipes.addShaped(<minecraft:log> * 8, [[null,vm.transformDamage(10)],[vm.transformDamage(10),null]]);
//矿工指环
recipes.addShaped(<baubles:ring>, [[vm.transformDamage(1), vm.transformDamage(1), vm.transformDamage(1)],[vm.transformDamage(1), null, vm.transformDamage(1)], [vm.transformDamage(1), vm.transformDamage(1), vm.transformDamage(1)]]);
//青金石块
recipes.addShaped(<minecraft:lapis_block>* 16, [[null, <minecraft:red_flower:1>, null],[<minecraft:red_flower:1>, vm, <minecraft:red_flower:1>], [null, <minecraft:red_flower:1>, null]]);
//萤石
recipes.addShaped(<minecraft:glowstone> * 4, [[<minecraft:yellow_flower>, <minecraft:yellow_flower>, <minecraft:yellow_flower>],[<minecraft:yellow_flower>, vm, <minecraft:yellow_flower>], [<minecraft:yellow_flower>, <minecraft:yellow_flower>, <minecraft:yellow_flower>]]);
//红石块
recipes.addShaped(<minecraft:redstone_block> * 4, [[<minecraft:red_flower>, <minecraft:red_flower>, <minecraft:red_flower>],[<minecraft:red_flower>, vm, <minecraft:red_flower>], [<minecraft:red_flower>, <minecraft:red_flower>, <minecraft:red_flower>]]);
//末影珍珠
recipes.addShaped(<minecraft:ender_pearl>, [[null, <minecraft:diamond>, null],[<minecraft:diamond>, vm, <minecraft:diamond>], [null, <minecraft:diamond>, null]]);
//骨头
recipes.addShaped(<minecraft:bone> * 16, [[vm, null, null],[null, vm, null], [null, null, vm]]);
//魔力发射器
recipes.addShaped(<botania:spreader>, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],[vm, <minecraft:gold_ingot>, null], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);
//符文祭坛
recipes.addShaped(<botania:altar>, [[<botania:livingrock0slab>, vm, <botania:livingrock0slab>],[null, <botania:livingrock>, null], [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);
//活石
recipes.addShaped(<botania:livingrock> * 4, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, cvm, <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
//活木
recipes.addShaped(<botania:livingwood> * 4, [[<minecraft:log>, <minecraft:log>, <minecraft:log>],[<minecraft:log>, cvm, <minecraft:log>], [<minecraft:log>, <minecraft:log>, <minecraft:log>]]);
//精灵门核心
recipes.addShaped(<botania:alfheimportal>, [[<botania:livingwood>, cvm, <botania:livingwood>],[cvm, <botania:livingwood:5>,cvm], [<botania:livingwood>, cvm, <botania:livingwood>]]);
//甘蔗
recipes.addShaped(<minecraft:reeds>, [[vm, null, vm],[<minecraft:grass>, null, <minecraft:grass>], [<minecraft:sand>, null, <minecraft:sand>]]);
//沙子
recipes.addShaped(<minecraft:sand> * 2, [[<minecraft:grass>, <minecraft:grass>, <minecraft:grass>],[<minecraft:grass>, vm, <minecraft:grass>], [<minecraft:grass>, <minecraft:grass>, <minecraft:grass>]]);
//压缩虚空物质
recipes.addShaped(cvm,[[<contenttweaker:void_matter>,<contenttweaker:void_matter>,<contenttweaker:void_matter>],[<contenttweaker:void_matter>,<contenttweaker:void_matter>,<contenttweaker:void_matter>],[<contenttweaker:void_matter>,<contenttweaker:void_matter>,<contenttweaker:void_matter>]]);
//双重压缩虚空物质
recipes.addShaped(dcvm,[[cvm,cvm,cvm],[cvm,cvm,cvm],[cvm,cvm,cvm]]);
recipes.addShaped(<botania:blacklotus:1>, [[<minecraft:coal_block>, null, <minecraft:coal_block>],[<minecraft:coal_block>, <contenttweaker:double_compressed_void_matter>, <minecraft:coal_block>], [<botania:livingwood>, <minecraft:coal_block>, <botania:livingwood>]]);
//煤炭块
recipes.addShaped(<minecraft:coal_block> * 4, [[null, <botania:dye:15>, null],[<botania:dye:15>, <contenttweaker:void_matter>, <botania:dye:15>], [null, <botania:dye:15>, null]]);