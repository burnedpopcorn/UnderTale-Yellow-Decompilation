id_frame_center = global.id_store;
id_frame_stack = global.id_store.id_frame_stack;
launch_state = 0;
event_user(1);

with (id_payload)
    image_alpha = 1;

alarm_active = false;
max_angle_pullback = 300;
max_angle_release = 60;
angle_pullback_speed = 4;
angle_release_speed = 8;
global.id_store = id;
