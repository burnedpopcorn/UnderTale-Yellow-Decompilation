function scr_enemy_attack_dalv_lightning_bolt()
{
    global.attack_counter_max = 0;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 6)
    {
        if (global.timer_attacks_counter < 5)
        {
            instance_create(obj_dalv_body.x - 68, obj_dalv_body.y - 76, obj_battle_enemy_attack_dalv_lightning_bolt);
        }
        else
        {
            with (obj_dalv_body)
                cloak_direction = 2;
        }
        
        global.timer_attacks_counter += 1;
    }
}
