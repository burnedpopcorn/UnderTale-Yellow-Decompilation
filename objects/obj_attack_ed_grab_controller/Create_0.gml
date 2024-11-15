var battle_box;

battle_box = 3154;
instance_create(camera_get_view_width(view_camera[0]) + 51, battle_box.bbox_bottom - 4 - 2 - 20, obj_attack_ed_grab_hand_solo);
instance_create(-51, battle_box.bbox_top + 4 + 2 + 24, obj_attack_ed_grab_hand_solo);
