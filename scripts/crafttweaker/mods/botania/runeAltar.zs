#priority 800

//删除从 rune:0 到 rune:15 的所有配方
val runeDef = <botania:rune>.definition;
for i in 0 to 16{
    mods.botania.RuneAltar.removeRecipe(runeDef.makeStack(i));
}

//火之符文
mods.botania.RuneAltar.addRecipe(<botania:rune:1> * 2 , [<contenttweaker:elf_will> , <minecraft:coal_block> , <botania:manaresource:23> , <botania:manaresource> , <contenttweaker:void_matter>], 8000);
//水之符文
mods.botania.RuneAltar.addRecipe(<botania:rune> * 2 , [<contenttweaker:elf_will> , <minecraft:fish> , <botania:manaresource:23> , <botania:manaresource> , <contenttweaker:void_matter>], 8000);
//地之符文
mods.botania.RuneAltar.addRecipe(<botania:rune:2> * 2 , [<contenttweaker:elf_will> , <minecraft:stone> , <botania:manaresource:23> , <botania:manaresource> , <contenttweaker:void_matter>], 8000);
//风之符文
mods.botania.RuneAltar.addRecipe(<botania:rune:3> * 2 , [<contenttweaker:elf_will> , <minecraft:string> , <botania:manaresource:23> , <botania:manaresource> , <contenttweaker:void_matter>], 8000);
//黎明符文
mods.botania.RuneAltar.addRecipe(<contenttweaker:the_rune_of_dawn> * 2 , [<contenttweaker:elf_will> , <minecraft:glowstone> , <botania:manaresource:23> , <botania:manaresource> , <contenttweaker:void_matter>], 8000);
//薄暮符文
mods.botania.RuneAltar.addRecipe(<contenttweaker:the_rune_of_twilight> * 2 , [<contenttweaker:elf_will> , <minecraft:obsidian> , <botania:manaresource:23> , <botania:manaresource> , <contenttweaker:void_matter>], 8000);
//魔力符文
mods.botania.RuneAltar.addRecipe(<botania:rune:8> * 2 , [<contenttweaker:elf_will> , <botania:manaresource:1> , <botania:manaresource:2> , <botania:manaresource> , <contenttweaker:void_matter>], 8000);
//混沌符文
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_chaos> , [<botania:rune>,<botania:rune:1>,<botania:rune:2>,<botania:rune:3>,<contenttweaker:the_rune_of_dawn>,<contenttweaker:the_rune_of_twilight>], 8000);
//绝望符文
mods.botania.RuneAltar.addRecipe(<contenttweaker:rune_of_despair> , [<botania:rune:9>,<botania:rune:10>,<botania:rune:11>,<botania:rune:12>,<botania:rune:13>,<botania:rune:14>,<botania:rune:15>], 8000);