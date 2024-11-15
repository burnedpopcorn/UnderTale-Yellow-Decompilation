scr_cutscene_start();
scr_radio_fade(0, 500);
instance_create_depth(350, camera_get_view_y(view_camera[0]) - (camera_get_view_height(view_camera[0]) * 0.5) - 40, -300, obj_mail_whale_steamworks_32);
instance_destroy();
