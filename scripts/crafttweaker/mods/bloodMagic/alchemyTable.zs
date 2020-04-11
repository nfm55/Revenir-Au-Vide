#priority 800

import mods.bloodmagic.AlchemyTable;

//var pot = <potion:bloodmagic:bounce>.makePotionEffect(2400 , 0);

//AlchemyTable.removeRecipe([<astralsorcery:blockcustomore:1> , <bloodmagic:cutting_fluid>.withTag({})]);
//AlchemyTable.removeRecipe([<minecraft:quartz_ore> , <bloodmagic:cutting_fluid>.withTag({})]);

//AlchemyTable.removeRecipe([<minecraft:slime> , <bloodmagic:potion_flask>]);
//AlchemyTable.removeRecipe([<minecraft:slime> , <bloodmagic:component:28> , <bloodmagic:potion_flask>.withTag({CustomPotionEffects: [{Ambient: 0 as byte , CurativeItems: [{ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "minecraft:milk_bucket", Count: 1 as byte , Damage: 0 as short}], ShowParticles: 1 as byte , Duration: 2400 , Id: 57 as byte , Amplifier: 0 as byte}]})]);
//AlchemyTable.addRecipe([<silentgems:craftingmaterial:28> , <bloodmagic:potion_flask>], pot , 1000 , 100 , 1);
AlchemyTable.addRecipe(<contenttweaker:rune_powder_of_fire> , [<bloodmagic:cutting_fluid>.anyDamage() , <botania:rune:1>], 500 , 100 , 1);
AlchemyTable.addRecipe(<contenttweaker:rune_powder_of_water> , [<bloodmagic:cutting_fluid>.anyDamage() , <botania:rune:0>], 500 , 100 , 1);
AlchemyTable.addRecipe(<contenttweaker:rune_powder_of_earth> , [<bloodmagic:cutting_fluid>.anyDamage() , <botania:rune:2>], 500 , 100 , 1);
AlchemyTable.addRecipe(<contenttweaker:rune_powder_of_wind> , [<bloodmagic:cutting_fluid>.anyDamage() , <botania:rune:3>], 500 , 100 , 1);
AlchemyTable.addRecipe(<contenttweaker:rune_powder_of_dawn> , [<bloodmagic:cutting_fluid>.anyDamage() , <contenttweaker:the_rune_of_dawn>], 500 , 100 , 1);
AlchemyTable.addRecipe(<contenttweaker:rune_powder_of_twilight> , [<bloodmagic:cutting_fluid>.anyDamage() , <contenttweaker:the_rune_of_twilight>], 500 , 100 , 1);
