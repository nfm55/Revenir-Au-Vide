#priority -100
//花药台合成
//功能花：白雏菊
mods.botania.Apothecary.removeRecipe("puredaisy");
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "puredaisy"}),[<botania:flower>,<contenttweaker:elf_will>,<contenttweaker:void_matter>,<botania:livingwood>]);