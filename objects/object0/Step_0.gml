var left, right, up, down;

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

horizontalVelocity = (right - left) * maxHorizontalVelocity;

verticalVelocity = (down - up) * maxVerticalVelocity;

hittingVertical = place_meeting(x, y + verticalVelocity * 1.5, obj_collision);
hittingHorizontal = place_meeting(x + horizontalVelocity * 1.2, y, obj_collision);