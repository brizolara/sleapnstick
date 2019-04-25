
declare name "violin_FaustRomainChion";
declare description "Simple violin physical model controlled with continuous parameters.";
declare license "MIT";
declare copyright "(c)Romain Michon, CCRMA (Stanford University), GRAME";

import("stdfaust.lib");

stringLength = hslider("stringLength",0.5,0.,3.,0.0001);
bowPressure = hslider("bowPressure",0.5,0.,1.,0.0001);
bowVelocity = hslider("bowVelocity",0.5,0.,1.,0.0001);
bowPosition = hslider("bowPosition",0.5,0.,1.,0.0001);

//violin_model = violinModel(stringLength,bowPressure,bowVelocity, bridgeReflexion, bridgeAbsorption, bowPosition) : _
violin_model = pm.violinModel(stringLength,bowPressure,bowVelocity,bowPosition) : _;

process = violin_model <: _,_;