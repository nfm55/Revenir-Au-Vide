#priority -100

//删除从 rune:0 到 rune:15 的所有配方
    val runeDef = <botania:rune>.definition;
    for i in 0 to 16{
        mods.botania.RuneAltar.removeRecipe(runeDef.makeStack(i));
    }
//火之符文
mods.botania.RuneAltar.addRecipe(<botania:rune:1>*2,[<contenttweaker:elf_will>, <minecraft:coal_block>,<botania:manaresource:23>,<botania:manaresource>,<contenttweaker:void_matter>], 8000);
//水之符文
mods.botania.RuneAltar.addRecipe(<botania:rune>*2,[<contenttweaker:elf_will>, <minecraft:fish>,<botania:manaresource:23>,<botania:manaresource>,<contenttweaker:void_matter>], 8000);
//地之符文
mods.botania.RuneAltar.addRecipe(<botania:rune:2>*2,[<contenttweaker:elf_will>, <minecraft:stone>,<botania:manaresource:23>,<botania:manaresource>,<contenttweaker:void_matter>], 8000);
//风之符文
mods.botania.RuneAltar.addRecipe(<botania:rune:3>*2,[<contenttweaker:elf_will>, <minecraft:string>,<botania:manaresource:23>,<botania:manaresource>,<contenttweaker:void_matter>], 8000);
