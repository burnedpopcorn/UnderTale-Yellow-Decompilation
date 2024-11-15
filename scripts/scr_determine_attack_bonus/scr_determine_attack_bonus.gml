function scr_determine_attack_bonus()
{
    var player_weapon, player_weapon_modifier;
    
    player_weapon = global.player_weapon;
    player_weapon_modifier = global.player_weapon_modifier;
    
    switch (player_weapon)
    {
        case "Toy Gun":
        case "Wild Revolver":
            switch (player_weapon_modifier)
            {
                case "Cff Bean Ammo":
                    if (instance_exists(obj_text_damage_count) && shot_type == "strong")
                    {
                        instance_create(obj_text_fighting_parent.x - 1, obj_text_fighting_parent.y - 27, obj_text_fighting_bonus_any);
                        
                        with (obj_text_fighting_bonus_any)
                        {
                            text = "SP+1";
                            script_execute(scr_color_sp_bonus);
                            c_color = c_sp_bonus;
                        }
                        
                        if (global.current_sp_self == 0)
                            global.current_sp_self = 1;
                        
                        if (global.current_sp_self > global.max_sp_self)
                            global.current_sp_self = global.max_sp_self;
                    }
                    
                    break;
                
                case "Glass Ammo":
                    if (instance_exists(obj_text_damage_count) && shot_type == "strong")
                    {
                        instance_create(obj_text_fighting_parent.x - 1, obj_text_fighting_parent.y - 27, obj_text_fighting_bonus_any);
                        
                        with (obj_text_fighting_bonus_any)
                        {
                            text = "HP+2";
                            script_execute(scr_color_hp_bonus);
                            c_color = c_hp_bonus;
                        }
                        
                        if (global.current_hp_self > global.max_hp_self)
                            exit;
                        
                        global.current_hp_self += 2;
                        
                        if (global.current_hp_self > global.max_hp_self)
                            global.current_hp_self = global.max_hp_self;
                    }
                    
                    break;
                
                default:
            }
            
            break;
        
        default:
    }
}
