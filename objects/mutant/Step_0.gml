var left, right, up, down;

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

var axish = gamepad_axis_value(0, gp_axislh);
var axisv = gamepad_axis_value(0, gp_axislv);


horizontalVelocity = (axish != 0 ? axish : (right - left)) * maxHorizontalVelocity;

verticalVelocity = (axisv != 0 ? axisv : (down - up)) * maxVerticalVelocity;

hittingVertical = place_meeting(x, y + verticalVelocity, obj_collision);
hittingHorizontal = place_meeting(x + horizontalVelocity, y, obj_collision);
//1.5 1.2