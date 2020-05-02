
if(chao && verticalVelocity > 0) verticalVelocity = 0;

x += horizontalVelocity;
y += verticalVelocity;


if(horizontalVelocity != 0)
image_xscale = horizontalVelocity < 0 ? -1 : 1;