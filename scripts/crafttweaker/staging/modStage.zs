#priority 700

import scripts.Util.stageUtil;

static stageModMap as string[][string] = {

    "one" : [
        "botanicadds",
	    "botanianeedsit",
	    "extendedcrafting",
	    "modularmachinery",
	    "modulardiversity",
	    "akashictome",
	    "tconstruct"
    ],
    "nature" : [
        "naturesaura"
    ],
    "blood" : [
        "bloodmagic"
    ],
    //"tinker" : [
    //    "tconstruct",
    //],
    "engineering" : [
        "immersiveengineering",
        "ThermalFoundation"
    ],
    "building_structure" : [
        "immersivepetroleum",
	    "immersivetech"
    ],
    //支线：刷怪塔改造计划
    "mob_grinding" : [
        "mob_grinding_utils"
    ],

    "two" : [
        "thermaldynamics",
        "thermalexpansion"
    ]

};

for stage , mods in stageModMap{
    for mod in mods{
        stageUtil.stageTheMod(stage , mod);
    }
}