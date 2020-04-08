#priority -100

import crafttweaker.item.IIngredient;
import mods.botaniatweaks.Agglomeration;

Agglomeration.removeDefaultRecipe();

//低效率的泰拉钢
Agglomeration.addRecipe(
    <botania:manaresource:4>, //输出
    [ <botania:manaresource:1>*2,<botania:manaresource:2>*2,<botania:manaresource>*2] as IIngredient[], //输入
    300000, //耗魔 默认为500,000（同泰拉钢）
    0xFFF143, //起始粒子颜色
    0xFE4BE8, //终止粒子颜色
    <botania:livingrock>, //仪式正中
    <botania:livingwood>, //仪式边缘
    <botania:livingrock>, //仪式四角
    <minecraft:stone>, //正中嬗变/枯竭
    <minecraft:log>, //边缘嬗变/枯竭
    <minecraft:stone> //四角嬗变/枯竭
);
//
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
//blood_tears
//血泪仪式
Agglomeration.addRecipe(
    <contenttweaker:blood_tears>, //输出
    [<minecraft:ghast_tear>,<botania:manaresource:5> ] as IIngredient[], //输入
    500000, //耗魔 默认为500,000（同泰拉钢）
    0xFFF143, //起始粒子颜色
    0xFE4BE8, //终止粒子颜色
    <botania:storage:1>, //仪式正中：泰拉钢块
    <botania:livingwood>, //仪式边缘：活木
    <botania:livingrock>, //仪式四角：活石
    <botania:storage:0>, //正中嬗变/枯竭
    <minecraft:log>, //边缘嬗变/枯竭
    <minecraft:stone> //四角嬗变/枯竭
);