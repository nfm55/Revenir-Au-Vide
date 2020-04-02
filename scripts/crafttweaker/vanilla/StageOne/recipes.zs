#priority -100
var vm = <contenttweaker:void_matter>.anyDamage();
var cvm = <contenttweaker:compressed_void_matter>;
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
recipes.addShaped(<minecraft:gold_ingot>, [[vm, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null], [null, null, null]]);
recipes.addShaped(<minecraft:iron_ore> * 4, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, vm.transformDamage(50), <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<contenttweaker:void_matter> * 2, [[<minecraft:cobblestone>, <minecraft:grass>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <minecraft:log>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:grass>, <minecraft:cobblestone>]]);
recipes.addShaped(<minecraft:log> * 8, [[null,vm.transformDamage(10)],[vm.transformDamage(10),null]]);
recipes.addShaped(<baubles:ring>, [[vm.transformDamage(1), vm.transformDamage(1), vm.transformDamage(1)],[vm.transformDamage(1), null, vm.transformDamage(1)], [vm.transformDamage(1), vm.transformDamage(1), vm.transformDamage(1)]]);
recipes.addShaped(<minecraft:lapis_block>* 16, [[null, <minecraft:red_flower:1>, null],[<minecraft:red_flower:1>, vm, <minecraft:red_flower:1>], [null, <minecraft:red_flower:1>, null]]);
recipes.addShaped(<minecraft:glowstone> * 4, [[<minecraft:yellow_flower>, <minecraft:yellow_flower>, <minecraft:yellow_flower>],[<minecraft:yellow_flower>, vm, <minecraft:yellow_flower>], [<minecraft:yellow_flower>, <minecraft:yellow_flower>, <minecraft:yellow_flower>]]);
recipes.addShaped(<minecraft:redstone_block> * 4, [[<minecraft:red_flower>, <minecraft:red_flower>, <minecraft:red_flower>],[<minecraft:red_flower>, vm, <minecraft:red_flower>], [<minecraft:red_flower>, <minecraft:red_flower>, <minecraft:red_flower>]]);
recipes.addShaped(<minecraft:ender_pearl>, [[null, <minecraft:diamond>, null],[<minecraft:diamond>, vm, <minecraft:diamond>], [null, <minecraft:diamond>, null]]);
recipes.addShaped(<minecraft:bone> * 16, [[vm, null, null],[null, vm, null], [null, null, vm]]);
recipes.addShaped(<botania:spreader>, [[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],[vm, <minecraft:gold_ingot>, null], [<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);
recipes.addShaped(<botania:altar>, [[<botania:livingrock0slab>, vm, <botania:livingrock0slab>],[null, <botania:livingrock>, null], [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);
recipes.addShaped(<botania:livingrock> * 4, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, cvm, <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);
recipes.addShaped(<botania:livingwood> * 4, [[<minecraft:log>, <minecraft:log>, <minecraft:log>],[<minecraft:log>, cvm, <minecraft:log>], [<minecraft:log>, <minecraft:log>, <minecraft:log>]]);
recipes.addShaped(<botania:alfheimportal>, [[<botania:livingwood>, cvm, <botania:livingwood>],[cvm, <botania:livingwood:5>,cvm], [<botania:livingwood>, cvm, <botania:livingwood>]]);
recipes.addShaped(<minecraft:reeds>, [[vm, null, vm],[<minecraft:grass>, null, <minecraft:grass>], [<minecraft:sand>, null, <minecraft:sand>]]);
recipes.addShaped(<minecraft:sand> * 2, [[<minecraft:grass>, <minecraft:grass>, <minecraft:grass>],[<minecraft:grass>, vm, <minecraft:grass>], [<minecraft:grass>, <minecraft:grass>, <minecraft:grass>]]);