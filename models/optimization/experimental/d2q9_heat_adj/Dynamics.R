AddDensity( name="f0", dx= 0, dy= 0, group="f" )
AddDensity( name="f1", dx= 1, dy= 0, group="f" )
AddDensity( name="f2", dx= 0, dy= 1, group="f" )
AddDensity( name="f3", dx=-1, dy= 0, group="f" )
AddDensity( name="f4", dx= 0, dy=-1, group="f" )
AddDensity( name="f5", dx= 1, dy= 1, group="f" )
AddDensity( name="f6", dx=-1, dy= 1, group="f" )
AddDensity( name="f7", dx=-1, dy=-1, group="f" )
AddDensity( name="f8", dx= 1, dy=-1, group="f" )
AddDensity( name="T0", dx= 0, dy= 0, group="T" )
AddDensity( name="T1", dx= 1, dy= 0, group="T" )
AddDensity( name="T2", dx= 0, dy= 1, group="T" )
AddDensity( name="T3", dx=-1, dy= 0, group="T" )
AddDensity( name="T4", dx= 0, dy=-1, group="T" )
AddDensity( name="T5", dx= 1, dy= 1, group="T" )
AddDensity( name="T6", dx=-1, dy= 1, group="T" )
AddDensity( name="T7", dx=-1, dy=-1, group="T" )
AddDensity( name="T8", dx= 1, dy=-1, group="T" )
AddDensity( name="w", group="w", parameter=T )

AddQuantity( name="Rho",unit="kg/m3")
AddQuantity( name="U",unit="m/s",vector=T)
AddQuantity( name="T",unit="K")
AddQuantity( name="W")
AddQuantity( name="WB",adjoint=T)

AddSetting(name="omega", comment='one over relaxation time')
#AddSetting(name="nu", omega='1.0/(3*nu + 0.5)', default=0.16666666, comment='viscosity')
AddSetting(name="nu0", omega='1.0/(3*nu + 0.5)', default=0.16666666, comment='viscosity')
AddSetting(name="InletVelocity", default="0m/s", comment='inlet velocity')
AddSetting(name="InletPressure", InletDensity='1.0+InletPressure/3', default="0Pa", comment='inlet pressure')
AddSetting(name="InletDensity", default=1, comment='inlet density')
AddSetting(name="InletTemperature", default=1, comment='inlet temperature')
AddSetting(name="InitTemperature", default=1, comment='inlet temperature')
AddSetting(name="HeaterTemperature", default=1, comment='inlet temperature')
AddSetting(name="FluidAlpha", default=1, comment='thermal diffusivity of fluid')
AddSetting(name="SolidAlpha", default=1, comment='thermal diffusivity of solid')
AddSetting(name="LimitTemperature", comment='temperature of the heater')
AddSetting(name="InletTotalPressure", comment='temperature of the heater')
AddSetting(name="OutletTotalPressure", comment='temperature of the heater')

# AddGlobal(name="PressDiff", comment='pressure loss')

AddGlobal(name="HeatFlux", comment='pressure loss')
AddGlobal(name="HeatSquareFlux", comment='pressure loss')
AddGlobal(name="Flux", comment='pressure loss')
AddGlobal(name="Temperature", comment='integral of temperature')
AddGlobal(name="HighTemperature", comment='penalty for high temperature')
AddGlobal(name="LowTemperature", comment='penalty for low temperature')

 AddNodeType("Heater","ADDITIONALS")
 AddNodeType("HeatSource","ADDITIONALS")
 AddNodeType("Thermometer","OBJECTIVE")

