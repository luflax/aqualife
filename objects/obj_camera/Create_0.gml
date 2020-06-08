onlyHorizontal = false
follow = instance_find(mutant, 0);
if(follow == noone){
	follow = instance_find(mutant_final, 0);
	onlyHorizontal = true
}

camera = camera_create();

var vm = matrix_build_lookat(x, y, -10,x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(onlyHorizontal ? 640 : 960, onlyHorizontal ? 360 : 540, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

xTo = x;
yTo = y;