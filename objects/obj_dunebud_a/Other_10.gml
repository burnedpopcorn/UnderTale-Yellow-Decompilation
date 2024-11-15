var enemy_dead, enemy_spared;

enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;

if (enemy_dead == false && enemy_spared == false)
{
    if (instance_exists(obj_battle_enemy_attack_dunebud_chase_enemy))
        a = 1;
    
    if (instance_exists(id_dunebud_chase))
        a = 1;
    
    if (id_dunebud_chase != -4)
    {
        image_alpha = 0;
        time_elapsed = 0;
        sign_modifier = 1;
        image_alpha_immunity = true;
    }
    else
    {
        if (global.image_alpha_enemy_attacking == 1)
            image_alpha_immunity = false;
        
        if (image_alpha_immunity == true)
            image_alpha = 1;
        else
            image_alpha = global.image_alpha_enemy_attacking;
    }
}
