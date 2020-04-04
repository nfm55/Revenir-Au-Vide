#priority -700
import mods.ResearchTable;

static fireworks_big as string = "summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:fireworks,Count:2,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,14188952,4312372,14602026,15435844,15790320],FadeColors:[I;5320730,14188952,15435844,15790320]},{Type:2,Flicker:1,Trail:1,Colors:[I;6719955],FadeColors:[I;2651799]}]}}}}";
static sound as  string = "playsound minecraft:ui.toast.challenge_complete player @s";
static fireworks_small as string = "summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;11743532,3887386,2437522,8073150,4408131,14188952,4312372,14602026,15435844,15790320],FadeColors:[I;2437522,14188952,4312372,14602026]}]}}}}";

function title(stage as string){
    return "title @s title {\"text\":\"恭喜，您已解锁 "+stage+" ！\"}";
}
function init(){
    var c = ResearchTable.addCategory(<item:botania:lexicon>.withtag({}));
    //植物魔法一系列的研究
     ResearchTable.builder("精灵造物研究", c)
       
        .setIcons(<item:botania:manaresource:7>)
        .setTitle("rav.research.elfnology.title")
        .setDescription("rav.research.elfnology.description")
        .addCondition(
            <item:botaniadds:dreamrock>*32,
            <item:botaniadds:manalapis>*16,
            <item:botania:manaresource:16>*4,
            <item:botania:manaresource>*4,
            <item:botania:manaresource:1>*4,
            <item:botania:manaresource:2>*4
            )
        .setRewardStages("Elf")
        .setRewardCommands(fireworks_big, title("有关精灵造物的认识"), sound, fireworks_small)
        .build();

     ResearchTable.builder("远古仪式复现", c)
        .setRequiredResearches("精灵造物研究")
        .setIcons(<item:botania:gaiahead>)
        .setTitle("rav.research.gaia.title")
        .setDescription("rav.research.gaia.description")
        .addCondition(
            <item:contenttweaker:ash_ingot>*16,
            <ore:ingotDawnstone>.firstItem*4,
            <ore:ingotBronze>.firstItem*4,
            <ore:ingotElectrum>.firstItem*4,
            <ore:ingotLead>.firstItem*8,
            <ore:ingotAluminum>.firstItem*8,
            <ore:ingotNickel>.firstItem*8,
            <ore:ingotIron>.firstItem*8,
            <contenttweaker:obsidian_ash>*32
            )
        .setRewardStages("gaia")
        .setRewardCommands(fireworks_big, title("远古仪式的认知"), sound, fireworks_small)
        .build();
    
     ResearchTable.builder( "创世：混沌生秩序", c)
        .setRequiredResearches("世界认知：虚空")
        .setIcons(<botania:blacklotus:1>)
        .setTitle("rav.research.hundunshengzhixu.tittle")
        .setDescription("rav.research.hundunshengzhixu.description")
        .addCondition(

        )
        .setRewardStages('gaia_hou')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("来自精灵的最后"), sound, fireworks_small))
        .build()
    //血魔法的一系列研究
     ResearchTable.builder（"世界理论：生命",c)
        .setRequiredResearches("远古仪式复现")
        .setIcons(//没想好)
        .setTitle("rav.research.life.tittle")
        .setDescription("rav.research.life.description")
        .addCondition(

        )
        .setRewardStages('life_beginning')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("生命"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"生命源质提取",c)
        .setRequiredResearches("世界理论：生命")
        .setIcons(//没想好)
        .setTitle("rav.research.qi_extract.tittle")
        .setDescription("rav.research.qi_extract.description")
        .addCondition(

        )
        .setRewardStages('qi_extract')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("提取源质（物理）"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"气血碎片凝聚",c)
        .setRequiredResearches("生命源质提取")
        .setIcons(//没想好)
        .setTitle("rav.research.qi_cohesion.tittle")
        .setDescription("rav.research.qi_cohesion.description")
        .addCondition(

        )
        .setRewardStages('qi_cohesion')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("凝聚源质（物理）"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"血腥仪式理解",c)
        .setRequiredResearches("气血碎片凝聚")
        .setIcons(//没想好)
        .setTitle("rav.research.ceremony_to_understand.tittle")
        .setDescription("rav.research.Ceremony_to_understand.description")
        .addCondition(

        )
        .setRewardStages('ceremony_to_understand')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("仪式入门"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"世界认知：生命",c)
        .setRequiredResearches("血腥仪式理解")
        .setIcons(//没想好)
        .setTitle("rav.research.understand_life.tittle")
        .setDescription("rav.research.understand_life.description")
        .addCondition(

        )
        .setRewardStages('understand_life')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("仪式代师"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"创世：一即全",c)
        .setRequiredResearches("世界认知：虚空")
        .setIcons(//没想好)
        .setTitle("rav.research.one_is_all.tittle")
        .setDescription("rav.research.one_is_all.description")
        .addCondition(

        )
        .setRewardStages('one_is_all')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("一生二，二生三，三生万物"), sound, fireworks_small))
        .build()
    //匠魂的一系列研究
     ResearchTable.builder（"世界理论：材料",c)
        .setRequiredResearches("远古仪式复现")
        .setIcons(//没想好)
        .setTitle("rav.research.theory_of_material.tittle")
        .setDescription("rav.research.theory_of_material.description")
        .addCondition(

        )
        .setRewardStages('theory_of_material')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("粗浅的材料认知"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"工具结构分析",c)
        .setRequiredResearches("世界理论：材料")
        .setIcons(//没想好)
        .setTitle("rav.analyze.tittle")
        .setDescription("rav.analyze.description")
        .addCondition(

        )
        .setRewardStages('analyze')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("分析工具结构"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"地狱矿产研究",c)
        .setRequiredResearches("工具结构分析")
        .setIcons(//没想好)
        .setTitle("rav.mineral_analysis.tittle")
        .setDescription("rav.mineral_analysis.description")
        .addCondition(

        )
        .setRewardStages('mineral_analysis')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("来自深渊的矿物"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"新材料利用测试",c)
        .setRequiredResearches("地狱矿产研究")
        .setIcons(//没想好)
        .setTitle("rav.utilization_of_new_materials.tittle")
        .setDescription("rav.utilization_of_new_materials.description")
        .addCondition(

        )
        .setRewardStages('utilization_of_new_materials')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("全新版本"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"世界认知：材料",c)
        .setRequiredResearches("新材料利用测试")
        .setIcons(//没想好)
        .setTitle("rav.material_of_cognitive.tittle")
        .setDescription("rav.material_of_cognitive.description")
        .addCondition(

        )
        .setRewardStages('material_of_cognitive')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("材料大师"), sound, fireworks_small))
        .build()
     //沉浸工艺的一系列研究
     ResearchTable.builder（"世界理论：技术",c)
        .setRequiredResearches("远古仪式复现")
        .setIcons(//没想好)
        .setTitle("rav.technology.tittle")
        .setDescription("rav.technology.description")
        .addCondition(

        )
        .setRewardStages('technology')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("神奇的想法"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"燃料理论革命",c)
        .setRequiredResearches("世界理论：技术")
        .setIcons(//没想好)
        .setTitle("rav.fuel_revolution.tittle")
        .setDescription("rav.fuel_revolution.description")
        .addCondition(

        )
        .setRewardStages('fuel_revolution')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("燃烧理论"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"金属调质探索",c)
        .setRequiredResearches("燃烧理论革命")
        .setIcons(//没想好)
        .setTitle("rav.metal_exploration.tittle")
        .setDescription("rav.metal_exploration.description")
        .addCondition(

        )
        .setRewardStages('metal_exploration')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("金属调质探索"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"钢结构建造",c)
        .setRequiredResearches("金属调质探索")
        .setIcons(//没想好)
        .setTitle("rav.building_structure.tittle")
        .setDescription("rav.building_structure.description")
        .addCondition(

        )
        .setRewardStages('building_structure')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("神奇的力学"), sound, fireworks_small))
        .build()
     ResearchTable.builder（"世界认知：技术",c)
        .setRequiredResearches("钢结构建造")
        .setIcons(//没想好)
        .setTitle("rav.technology_of_cognitive.tittle")
        .setDescription("rav.technology_of_cognitive.description")
        .addCondition(

        )
        .setRewardStages('technology_of_cognitive')
        .setRewardCommands(.setRewardCommands(fireworks_big, title("技术认知"), sound, fireworks_small))
        .build()
    //模块化机器的亿些研究
        ResearchTable.builder（"世界理论：新世界",c)
        .setRequiredResearches("世界认知：生命","世界认知：材料","世界认知：技术")
        .setIcons(//没想好)
        .setTitle("rav.new_world.tittle")
        .setDescription("rav.new_world.description")
        .addCondition(

        )
        .setRewardStages('new_world')
        .setRewardCommands(.setRewardCommands(fireworks_big, title(""), sound, fireworks_small))
        .build()
        ResearchTable.builder（"",c)
        .setRequiredResearches("世界理论：新世界")
        .setIcons(//没想好)
        .setTitle("rav..tittle")
        .setDescription("rav..description")
        .addCondition(

        )
        .setRewardStages('new_world')
        .setRewardCommands(.setRewardCommands(fireworks_big, title(""), sound, fireworks_small))
        .build()
        
}
/*
    ResearchTable.builder("基础信号学", c)
        .setRequiredResearches("基础材料学")
        .setIcons(<item:minecraft:redstone_torch>)
        .setTitle("etm.research.basic_IT.title")
        .setDescription("etm.research.basic_IT.description")
        .addCondition(
            <ore:ingotAshenMetal>.firstItem*16,
            <ore:dustRedstone>.firstItem*32,
            <contenttweaker:basic_transmission>*8,
            <contenttweaker:obsolete_circuit>*16
            )
        .setRewardStages("基础信号学")
        .setRewardCommands(fireworks_big, title("基础信号学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("进阶信号学", c)
        .setRequiredResearches("基础信号学")
        .setIcons(<contenttweaker:basic_sensor>)
        .setTitle("etm.research.advanced_IT.title")
        .setDescription("etm.research.advanced_IT.description")
        .addCondition(
            <contenttweaker:ember_diode>*16,
            <item:contenttweaker:obsolete_circuit>*32,
            <ore:dustRedstone>*64,
            <item:minecraft:repeater>*16,
            <item:minecraft:comparator>*16
            )
        .setRewardStages("进阶信号学")
        .setRewardCommands(fireworks_big, title("进阶信号学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("基础物流学", c)
        .setRequiredResearches("基础材料学")
        .setIcons(<wopper:wopper>)
        .setTitle("etm.research.basic_logistics.title")
        .setDescription("etm.research.basic_logistics.description")
        .addCondition(
            <ore:ingotAshenMetal>.firstItem*16,
            <wopper:wopper>*32,
            <embers:pump>*8,
            <embers:pipe>*16,
            <embers:blend_caminite>*16
            )
        .setRewardStages("基础物流学")
        .setRewardCommands(fireworks_big, title("基础物流学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("进阶物流学", c)
        .setRequiredResearches("基础物流学","基础信号学")
        .setIcons(<embers:item_transfer>)
        .setTitle("etm.research.advanced_logistics.title")
        .setDescription("etm.research.advanced_logistics.description")
        .addCondition(
            <ore:ingotAshenMetal>.firstItem*32,
            <minecraft:hopper>*16,
            <minecraft:rail>*64,
            <embers:blend_caminite>*32,
            <ore:dustRedstone>.firstItem*32,
            <ore:ingotElectrum>.firstItem*32
            )
        .setRewardStages("进阶物流学")
        .setRewardCommands(fireworks_big, title("进阶物流学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("生物学", c)
        .setRequiredResearches("基础材料学")
        .setIcons(<ore:cropWheat>.firstItem)
        .setTitle("etm.research.biology.title")
        .setDescription("etm.research.biology.description")
        .addCondition(
            <ore:ingotAshenMetal>*16,
            <minecraft:spider_eye>*8,
            <minecraft:rotten_flesh>*64,
            <minecraft:bone>*64,
            <fluid:water>*20000,
            <fluid:aquae_cinere>*8000
            )
        .setRewardStages("生物学")
        .setRewardCommands(fireworks_big, title("生物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("植物学", c)
        .setRequiredResearches("生物学")
        .setIcons(<ore:cropCarrot>.firstItem)
        .setTitle("etm.research.botany.title")
        .setDescription("etm.research.botany.description")
        .addCondition(
            <minecraft:wheat_seeds>*64,
            <ore:cropWheat>*128,
            <minecraft:cactus>*32,
            <ore:etmSeaweed>*64,
            <fluid:water>*48000
            )
        .setRewardStages("植物学")
        .setRewardCommands(fireworks_big, title("植物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("基础怪物学", c)
        .setRequiredResearches("生物学")
        .setIcons(<item:minecraft:rotten_flesh>)
        .setTitle("etm.research.basic_mobiology.title")
        .setDescription("etm.research.basic_mobiology.description")
        .addCondition(
            <minecraft:rotten_flesh>*192,
            <minecraft:bone>*192,
            <ore:gunpowder>*64,
            <item:minecraft:string>*128,
            <fluid:corrosive_liquid>*20000
            )
        .setRewardStages("基础怪物学")
        .setRewardCommands(fireworks_big, title("基础怪物学"), sound, fireworks_small)
        .build();

    ResearchTable.builder("动物学", c)
        .setRequiredResearches("植物学")
        .setIcons(<minecraft:beef>)
        .setTitle("etm.research.zoology.title")
        .setDescription("etm.research.zoology.description")
        .addCondition(
            <ore:cropCarrot>*64,
            <ore:cropPotato>*64,
            <ore:cropWheat>*64,
            <ore:cropBeetroot>*32,
            <ore:cropCactus>*32,
            <fluid:water>*16000
            )
        .setRewardStages("动物学")
        .setRewardCommands(fireworks_big, title("动物学"), sound, fireworks_small)
        .build();
}