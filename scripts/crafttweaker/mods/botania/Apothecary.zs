#priority 800

//花药台合成
//功能花：白雏菊
mods.botania.Apothecary.removeRecipe("puredaisy");
mods.botania.Apothecary.addRecipe(
    <botania:specialflower>.withTag({type: "puredaisy"}),
    [<botania:petal:0> , <botania:petal:0> , <contenttweaker:elf_will> , <contenttweaker:void_matter> , <botania:livingwood>]
);
//金叶
mods.botania.Apothecary.addRecipe(
    <naturesaura:gold_fiber>,
    [<minecraft:gold_nugget>,<contenttweaker:elf_will>,<minecraft:tallgrass:1>,<botania:manaresource:23>,<botania:manaresource:13>]
);