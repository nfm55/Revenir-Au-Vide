#priority 800

import mods.bloodmagic.BloodAltar;

mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:obsidian>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:magma_cream>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:lapis_block>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ghast_tear>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:coal_block>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:glowstone>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:stone>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:redstone_block>);
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:gold_block>);


//血之泪
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:blood_tears> , <contenttweaker:elf_will> ,  3 , 1000 , 50 , 5);
//空白石板
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate:0> ,<botania:livingrock> ,  0 , 1000 , 50 , 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:2> ,<contenttweaker:rune_powder_of_fire> ,  3 , 1000 , 50 , 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:1> ,<contenttweaker:rune_powder_of_water> ,  3 , 1000 , 50 , 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:3> ,<contenttweaker:rune_powder_of_earth> ,  3 , 1000 , 50 , 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:4> ,<contenttweaker:rune_powder_of_wind> ,  3 , 1000 , 50 , 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:5> ,<contenttweaker:rune_powder_of_dawn> ,  3 , 1000 , 50 , 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:inscription_tool:6> ,<contenttweaker:rune_powder_of_twilight> ,  3 , 1000 , 50 , 5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),<contenttweaker:rune_of_chaos>,1,5000,5,5);