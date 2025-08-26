var enemy_dead = global.enemy_dead;
var enemy_spared = global.enemy_spared;

if (enemy_dead == false && enemy_spared == false)
{
    if (id_martlet_wing_gust != -4)
    {
        image_alpha = 0;
        time_elapsed = 0;
        sign_modifier = 1;
    }
    else if (instance_exists(obj_quote_battle_martlet_pacifist_during_attack_parent))
    {
        during_dialogue = true;
        
        if (global.image_alpha_enemy_attacking_immunity == true)
            image_alpha = 1;
        
        if (image_alpha < 1)
        {
            image_alpha += 0.05;
            
            if (image_alpha >= 1)
                image_alpha = 1;
        }
        
        image_alpha_temp = image_alpha;
    }
    else if (during_dialogue == true)
    {
        image_alpha = image_alpha_temp + (global.image_alpha_enemy_attacking * (1 - image_alpha_temp));
        
        if (global.image_alpha_enemy_attacking == 1)
            during_dialogue = false;
    }
    else
    {
        image_alpha = global.image_alpha_enemy_attacking;
    }
}
