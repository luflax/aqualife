/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06A24807
/// @DnDArgument : "code" "/// @description vstick_init(stick_id,x,y,r,square_calculation,backsprite,frontsprite)$(13_10)/// @param stick_id$(13_10)/// @param x$(13_10)/// @param y$(13_10)/// @param r$(13_10)/// @param square_calculation$(13_10)/// @param backsprite$(13_10)/// @param frontsprite$(13_10)/*$(13_10)WARNING!: The virtual joysticks use the globalvar vstick to hold the array. $(13_10)Please do not use this variable elsewhere in your game, as it will cause conflicts.$(13_10)$(13_10)This script adds a joystick with a given id.$(13_10)$(13_10)stick_id:           The id to be given to the stick. This can be any integer value, but should be unique to each joystick.$(13_10)$(13_10)x,y:                The x and y values are relative to the GUI layer, as the vstick_draw function is supposed $(13_10)                    to be called in the GUI_draw event.$(13_10)$(13_10)r:                  The radius of the joystick.$(13_10)$(13_10)square_calculation: If enabled, it will map out the values on the dpad from -1 to 1 (follows GM's axis) $(13_10)                    over the entire circle, instead of the actual x and y values (very much like on a gamepad).$(13_10)                    $(13_10)backsprite:         In case you want to use a background sprite for the thumbstick, instead of the default coded variant. The origin should be the center of the dpad.$(13_10)                    If you don't have a sprite for this, set this value to noone.$(13_10)                    $(13_10)frontsprite:        The sprite for the actual stick itself. Works like the backsprite.$(13_10)*/$(13_10)$(13_10)globalvar vstick;$(13_10)vstick[argument0,0]=0;//vstick xaxis$(13_10)vstick[argument0,1]=0;//vstick yaxis$(13_10)vstick[argument0,2]=argument3;//vstick radius$(13_10)vstick[argument0,3]=argument1;//vstick x$(13_10)vstick[argument0,4]=argument2;//vstick y$(13_10)vstick[argument0,5]=1;//vstick active$(13_10)vstick[argument0,6]=0;//vstick drag --> vstick_check$(13_10)vstick[argument0,7]=-1;//vstick device id$(13_10)vstick[argument0,8]=0;//vstick direction in radians$(13_10)vstick[argument0,10]=argument4;//square calculation$(13_10)vstick[argument0,11]=0;//draw_xaxis$(13_10)vstick[argument0,12]=0;//draw_yaxis$(13_10)vstick[argument0,13]=argument5;//vstick backsprite$(13_10)vstick[argument0,14]=argument6;//vstick frontsprite$(13_10)vstick[argument0,15]=0; //vstick_check_pressed$(13_10)vstick[argument0,16]=0; //vstick_check_released$(13_10)$(13_10)"
/// @description vstick_init(stick_id,x,y,r,square_calculation,backsprite,frontsprite)
/// @param stick_id
/// @param x
/// @param y
/// @param r
/// @param square_calculation
/// @param backsprite
/// @param frontsprite
/*
WARNING!: The virtual joysticks use the globalvar vstick to hold the array. 
Please do not use this variable elsewhere in your game, as it will cause conflicts.

This script adds a joystick with a given id.

stick_id:           The id to be given to the stick. This can be any integer value, but should be unique to each joystick.

x,y:                The x and y values are relative to the GUI layer, as the vstick_draw function is supposed 
                    to be called in the GUI_draw event.

r:                  The radius of the joystick.

square_calculation: If enabled, it will map out the values on the dpad from -1 to 1 (follows GM's axis) 
                    over the entire circle, instead of the actual x and y values (very much like on a gamepad).
                    
backsprite:         In case you want to use a background sprite for the thumbstick, instead of the default coded variant. The origin should be the center of the dpad.
                    If you don't have a sprite for this, set this value to noone.
                    
frontsprite:        The sprite for the actual stick itself. Works like the backsprite.
*/

globalvar vstick;
vstick[argument0,0]=0;//vstick xaxis
vstick[argument0,1]=0;//vstick yaxis
vstick[argument0,2]=argument3;//vstick radius
vstick[argument0,3]=argument1;//vstick x
vstick[argument0,4]=argument2;//vstick y
vstick[argument0,5]=1;//vstick active
vstick[argument0,6]=0;//vstick drag --> vstick_check
vstick[argument0,7]=-1;//vstick device id
vstick[argument0,8]=0;//vstick direction in radians
vstick[argument0,10]=argument4;//square calculation
vstick[argument0,11]=0;//draw_xaxis
vstick[argument0,12]=0;//draw_yaxis
vstick[argument0,13]=argument5;//vstick backsprite
vstick[argument0,14]=argument6;//vstick frontsprite
vstick[argument0,15]=0; //vstick_check_pressed
vstick[argument0,16]=0; //vstick_check_released

/**/