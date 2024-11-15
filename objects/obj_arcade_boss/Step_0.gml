if (arc_enemy_death == false)
{
    if (step > 0 && arc_enemy_hp < 70)
    {
        x += arc_enemy_hsp;
        
        if (x > 200)
            arc_enemy_hsp = -2;
        else if (x < 100)
            arc_enemy_hsp = 2;
    }
    
    if (arc_boss_attack == 0)
    {
        switch (step)
        {
            case 0:
                if (y < y_destination)
                    y += 1.5;
                else
                    step++;
                
                break;
            
            case 1:
                if (wait_timer > 0)
                    wait_timer--;
                else
                    step++;
                
                break;
            
            case 2:
                arc_boss_attack = choose(1, 2, 3);
                step = 0;
                break;
            
            case 6:
                wait_timer = 90;
                step = 1;
                break;
        }
    }
    
    if (arc_boss_attack == 1)
    {
        switch (step)
        {
            case 0:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 15;
                    instance_create(x + 10, y + 10, obj_arcade_enemy_tear);
                }
                
                break;
            
            case 1:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 15;
                    instance_create(x - 10, y + 10, obj_arcade_enemy_tear);
                }
                
                break;
            
            case 2:
                arc_boss_attack = 0;
                wait_timer = 90;
                step = 1;
                break;
        }
    }
    
    if (arc_boss_attack == 2)
    {
        switch (step)
        {
            case 0:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 15;
                    instance_create(90, 40, obj_arcade_enemy);
                    instance_create(225, 40, obj_arcade_enemy);
                }
                
                break;
            
            case 1:
                arc_boss_attack = 0;
                wait_timer = 75;
                step = 1;
                break;
        }
    }
    
    if (arc_boss_attack == 3)
    {
        switch (step)
        {
            case 0:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 10;
                    instance_create(x - 24, y + 16, obj_arcade_enemy_homing);
                }
                
                break;
            
            case 1:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 15;
                    instance_create(x - 12, y + 20, obj_arcade_enemy_homing);
                }
                
                break;
            
            case 2:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 15;
                    instance_create(x, y + 24, obj_arcade_enemy_homing);
                }
                
                break;
            
            case 3:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 15;
                    instance_create(x + 12, y + 20, obj_arcade_enemy_homing);
                }
                
                break;
            
            case 4:
                if (wait_timer > 0)
                {
                    wait_timer--;
                }
                else
                {
                    step++;
                    wait_timer = 15;
                    instance_create(x + 24, y + 16, obj_arcade_enemy_homing);
                }
                
                break;
            
            case 5:
                arc_boss_attack = 0;
                wait_timer = 90;
                step = 1;
                break;
        }
    }
}
else
{
    if (step == 0)
    {
        audio_play_sound(snd_mew_boss_spare, 1, 0);
        audio_sound_gain(mus_mew_boss, 0, 3000);
        step++;
    }
    
    if (step == 1)
    {
        if (image_index >= (image_number - 1))
        {
            image_speed = 0;
            arc_enemy_hsp = 3;
            audio_play_sound(snd_mew_seeya, 1, 0);
            step++;
        }
    }
    
    if (step == 2)
        x += arc_enemy_hsp;
}

if (x > 260)
{
    instance_destroy();
    instance_deactivate_all(true);
    instance_activate_object(obj_pl);
    instance_activate_object(global.party_member);
    instance_activate_object(obj_controller);
    instance_activate_object(obj_radio);
    instance_activate_object(obj_arcade_controller);
    obj_arcade_controller.arcade_game_win = true;
    audio_play_sound(choose(snd_mew_win_1, snd_mew_win_2), 1, 0);
}
