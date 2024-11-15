if (place_meeting(x, y, obj_heart_battle_menu) && obj_heart_battle_menu.image_alpha == 1)
    image_index = 1;
else if (place_meeting(x, y, obj_heart_battle_menu) && instance_exists(obj_heart_battle_menu_act))
    image_index = 1;
else
    image_index = 0;
