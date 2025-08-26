if (live_call())
    return global.live_result;

with (other)
{
    var player_weapon = global.player_weapon;
    var player_weapon_modifier = global.player_weapon_modifier;
    
    switch (player_weapon)
    {
        case "Wild Revolver":
            switch (player_weapon_modifier)
            {
                case "Pebble Ammo":
                    target_sprite = spr_wild_revolver_battle_circle_pebbles;
                    break;
                
                case "Cff Bean Ammo":
                    target_sprite = spr_wild_revolver_battle_circle_coffee;
                    break;
                
                case "Glass Ammo":
                    target_sprite = spr_wild_revolver_battle_circle_glass;
                    break;
                
                case "Silver Ammo":
                    target_sprite = spr_wild_revolver_battle_circle_silver;
                    break;
                
                case "Nails":
                    target_sprite = spr_wild_revolver_battle_circle_nails;
                    break;
                
                case "Friendliness Pellets":
                    target_sprite = spr_wild_revolver_battle_circle_pellets;
                    break;
                
                case "Ice Pellets":
                    target_sprite = spr_wild_revolver_battle_circle_ice;
                    break;
                
                case "Flint":
                    target_sprite = spr_wild_revolver_battle_circle_flint;
                    break;
                
                default:
                    target_sprite = spr_wild_revolver_battle_circle;
            }
            
            break;
    }
    
    image_speed = 0;
    image_index = 0;
    image_alpha = 1;
    image_xscale = 1;
    image_yscale = 1;
    target_radius = 39;
    target_angle = 0;
    target_current = 0;
    target_max = 6;
    target_shrink_inc = 0.15;
    multishot_delay = 5;
    no_loop_delay = true;
    multishot_id = -4;
    gun_spin = false;
    sign_modifier = 1;
    time_elapsed = 0;
    time_max = 20;
    time_increase = 1;
    max_rise = 360 / target_max;
    
    for (i = 0; i < target_max; i++)
        tm[i] = time_max - (3 * i);
    
    continue_shot = true;
    instance_create(319, 320, obj_dialogue_box_battle_transformation_attack);
    
    with (obj_dialogue_box_battle_transformation_attack)
    {
        sprite_width_destination = sprite_height;
        sprite_height_destination = sprite_height;
        max_frames_default = 10;
        transform_type = "in";
    }
}
