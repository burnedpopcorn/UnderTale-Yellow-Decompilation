function scr_battle_box_resize_midfight()
{
    if (instance_exists(obj_dialogue_box_battle_transformation_any))
    {
        with (obj_dialogue_box_battle_transformation_any)
        {
            battle_box_resize_midfight = true;
            battle_box_target_xscale = argument[0] / sprite_get_width(sprite_index);
            battle_box_target_yscale = argument[1] / sprite_get_height(sprite_index);
            
            if (argument_count > 2)
            {
                battle_box_target_x = argument[2];
                battle_box_target_y = argument[3];
            }
            
            if (abs(image_xscale - battle_box_target_xscale) < 0.01 && abs(image_yscale - battle_box_target_yscale) < 0.01 && abs(x - battle_box_target_x) < 0.1 && abs(y - battle_box_target_y) < 0.1)
            {
                var box = obj_dialogue_box_battle_transformation_any;
                global.attack_surface_width = box.sprite_width - 8;
                global.attack_surface_height = box.sprite_height - 8;
                global.attack_surface_x = box.x - (global.attack_surface_width * 0.5);
                global.attack_surface_y = box.y - (global.attack_surface_height * 0.5);
                
                if (surface_exists(global.attack_surface))
                    global.attack_surface = surface_create(global.attack_surface_width, global.attack_surface_height);
                
                return true;
            }
        }
    }
    else
    {
        return false;
    }
}
