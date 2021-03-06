#priority 800

import crafttweaker.item.IIngredient;
import mods.botaniatweaks.Agglomeration;

Agglomeration.removeDefaultRecipe();

//低效率的泰拉钢
Agglomeration.addRecipe(
    <botania:manaresource:4>, //输出
    [<botania:manaresource:1>*2 , <botania:manaresource:2>*2 , <botania:manaresource>*2] as IIngredient[], //输入
    300000, //耗魔 默认为500 , 000（同泰拉钢）
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
    [<contenttweaker:elf_will> , <contenttweaker:void_matter> , <botania:manaresource>],
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
    [<minecraft:ghast_tear> , <botania:manaresource:5> *2 , <contenttweaker:elf_will> *2] as IIngredient[], //输入
    100000, //耗魔 默认为500 , 000（同泰拉钢）
    0xFF8C00, //起始粒子颜色
    0xBC1717, //终止粒子颜色
    <botania:storage:1>, //仪式正中：泰拉钢块
    <botania:dreamwood>, //仪式边缘：梦之木
    <botanicadds:dreamrock>, //仪式四角：梦之石
    <botania:storage:0>, //正中嬗变/枯竭
    <minecraft:log>, //边缘嬗变/枯竭
    <minecraft:stone> //四角嬗变/枯竭
);
//凝聚盖亚之力
Agglomeration.addRecipe(
    <botania:manaresource:5>*2, //输出
    [<minecraft:grass> , <minecraft:apple>  , <minecraft:sapling> , <minecraft:wheat>,<minecraft:red_flower>] as IIngredient[], //输入
    100000, //耗魔 默认为500 , 000（同泰拉钢）
    0xFF8C00, //起始粒子颜色
    0xBC1717, //终止粒子颜色
    <botanicadds:dreamrock>,
    <botania:storage:2>,
    <botanicadds:dreamrock>, //仪式四角：梦之石
    <minecraft:stone>, //正中嬗变/枯竭
    <minecraft:stone>, //边缘嬗变/枯竭
    <minecraft:stone> //四角嬗变/枯竭
);
//你管这叫炼金术？
Agglomeration.addRecipe(
    <minecraft:apple>,
    [<contenttweaker:natural_soul>],
    50000,
    0xFF8C00, 
    0xBC1717,
    <ore:blockIron>,
    <ore:blockGold>,
    <ore:blockIron>,
    <thermalfoundation:storage>,
    <thermalfoundation:storage:2>,
    <thermalfoundation:storage>
);