var left, right, up, down;

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

chao = place_meeting(x, y + 1, object1);

horizontalVelocity = (right - left) * maxHorizontalVelocity;

verticalVelocity = (down - up) * maxVerticalVelocity;