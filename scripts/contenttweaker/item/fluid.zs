/*
Partial codes by youyihj
Adapted by GOGG
Following the license of CC BY-NC-SA 4.0
*/
#priority 1000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Material;

function buildFluid(
		name as string,
		color as string, 
		temperature as int, 
		viscosity as int, 
		density as int, 
		luminosity as int, 
		isLava as bool, 
		colorize as bool, 
		stillWater as bool, 
		flowWater as bool){

	var fluid = VanillaFactory.createFluid(name,Color.fromHex(color));

	fluid.temperature = temperature; //温度默认300 水为基准
	fluid.viscosity = viscosity; //粘度默认1000 水为基准
	fluid.density = density; //密度默认1000 水为基准
	fluid.luminosity = luminosity; //亮度默认0 水为基准
	fluid.material = isLava? <blockmaterial:lava> : <blockmaterial:water>;
	fluid.stillLocation = stillWater? "base:fluids/liquid":"base:fluids/molten";
	fluid.flowingLocation = flowWater? "base:fluids/liquid_flow" : "base:fluids/molten_flowing";
	fluid.register();
}

//熔融模块化合金
buildFluid("modularium", "ff471a", 120, 1200, 1200, 0, false, false, false, false);
buildFluid("sky_ingot", "7ed5fe", 120, 1200, 1200, 0, false, false, false, false);
buildFluid("blood_ingot", "a40626", 120, 1200, 1200, 0, false, false, false, false);
//buildFluid("modularium", "ff471a", 120, 1200, 1200, 0, false, false, false, false);
//buildFluid("modularium", "ff471a", 120, 1200, 1200, 0, false, false, false, false);
