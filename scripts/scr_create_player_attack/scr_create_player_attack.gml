function scr_create_player_attack()
{
    var player_weapon, player_weapon_modifier, random_generator;
    
    if (global.battle_enemy_name == "macro froggit" && global.turns_passed == 0)
    {
        global.enemy_attacking = true;
        exit;
    }
    
    player_weapon = global.player_weapon;
    player_weapon_modifier = global.player_weapon_modifier;
    
    switch (player_weapon)
    {
        case "Toy Gun":
            switch (player_weapon_modifier)
            {
                case "Pebble Ammo":
                case "Cff Bean Ammo":
                case "Glass Ammo":
                case "Super Ammo":
                case "Silver Ammo":
                    instance_create(319, 319, obj_toy_gun_circle);
                    break;
                
                case "Ice Pellets":
                    instance_create(319, 319, obj_toy_gun_circle_multi);
                    
                    with (obj_toy_gun_circle_multi)
                    {
                        circle_count = 2;
                        event_user(1);
                    }
                    
                    break;
                
                case "Flint":
                case "Friendliness Pellets":
                case "Nails":
                    instance_create(319, 319, obj_toy_gun_circle_multi);
                    
                    with (obj_toy_gun_circle_multi)
                    {
                        circle_count = 3;
                        event_user(1);
                    }
                    
                    break;
                
                default:
                    instance_create(319, 319, obj_toy_gun_circle);
            }
            
            instance_create(320, 320, obj_toy_gun_battle_circle);
            break;
        
        case "Wild Revolver":
            instance_create(320, 320, obj_wild_revolver_battle_outline);
            
            switch (player_weapon_modifier)
            {
                case "Pebble Ammo":
                case "Cff Bean Ammo":
                case "Glass Ammo":
                case "Silver Ammo":
                    instance_create(319, 319 - obj_wild_revolver_battle_outline.target_radius, obj_wild_revolver_circle);
                    break;
                
                case "Ice Pellets":
                    instance_create(319, 319 - obj_wild_revolver_battle_outline.target_radius, obj_wild_revolver_circle_multi);
                    
                    with (obj_wild_revolver_circle_multi)
                    {
                        circle_count = 2;
                        event_user(1);
                    }
                    
                    break;
                
                case "Flint":
                case "Friendliness Pellets":
                case "Nails":
                    instance_create(319, 319 - obj_wild_revolver_battle_outline.target_radius, obj_wild_revolver_circle_multi);
                    
                    with (obj_wild_revolver_circle_multi)
                    {
                        circle_count = 3;
                        event_user(1);
                    }
                    
                    break;
                
                default:
                    instance_create(319, 319 - obj_wild_revolver_battle_outline.target_radius, obj_wild_revolver_circle);
            }
            
            with (obj_wild_revolver_battle_outline)
                event_user(0);
            
            break;
        
        default:
            random_generator = irandom_range(1, 2);
            
            if (random_generator == 1)
                instance_create(44, 255, obj_target_bar_battle);
            else if (random_generator == 2)
                instance_create(594, 255, obj_target_bar_battle_2);
            
            instance_create(319, 320, obj_target_battle);
    }
}
