#priority 700

import scripts.Util.stageUtil;

static stageModMap as string[][string] = {

    "one" : [
        "botanicadds",
	    "botanianeedsit",
	    //"immersiveengineering",
	    "extendedcrafting",
	    //"bloodmagic",
	    "modularmachinery",
	    "modulardiversity",
	    "akashictome",
	    "tconstruct",
    ],
    "blood" : [
        "bloodmagic",
    ],
    "tinker" : [
        "tconstruct",
    ],
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