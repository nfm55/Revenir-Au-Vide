#packmode normal expert
#modloaded etutil apotheosis bloodarsenal botania_tweaks botanicadds draconicadditions enderioendergy rf-capability-adapter equivalentenergistics sgextraparts
#priority -100

import crafttweaker.item.IIngredient;
import mods.botaniatweaks.Agglomeration;

Agglomeration.removeDefaultRecipe;

Agglomeration.addRecipe(
    <botania:manaresource:4>, //输出
    [ <botania:manaresource:1>,<botania:manaresource:2>,<botania:manaresource>] as IIngredient[], //输入
    200000, //耗魔 默认为500,000（同泰拉钢）
    0xFFF143, //起始粒子颜色
    0xFE4BE8, //终止粒子颜色
    <botania:livingrock>, //仪式正中
    <botania:livingwood>, //仪式边缘
    <botania:livingrock>, //仪式四角
    <minecraft:stone>, //正中嬗变/枯竭
    <minecraft:log>, //边缘嬗变/枯竭
    <minecraft:stone> //四角嬗变/枯竭
);

Agglomeration.addRecipe(
    <botania:manaresource:4>*2,
    [<contenttweaker:elf_will>,<contenttweaker:void_matter>,<botania:manaresource>],
    300000,
    0xFFF143,
    0xFE4BE8,
    <botanicadds:dreamrock>,
    <botania:storage:2>,
    <botanicadds:dreamrock>,
    null,
    null,
    null
);
