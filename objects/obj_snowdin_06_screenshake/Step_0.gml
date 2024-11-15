x_original = obj_camera.x;
y_original = obj_camera.y;

if (scr_timer())
    instance_destroy();

obj_camera.x += irandom_range(-2, 2);
obj_camera.y += irandom_range(-2, 2);
