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
	    "tconstruct",
    ],
    "nature" : [
        "naturesaura"
    ],
    "blood" : [
        "bloodmagic",
    ],
    //"tinker" : [
    //    "tconstruct",
    //],
    "engineering" : [
        "immersiveengineering",
    ],
    "building_structure" : [
        "immersivepetroleum",
	    "immersivetech",
    ]

};

for stage , mods in stageModMap{
    for mod in mods{
        stageUtil.stageTheMod(stage , mod);
    }
}