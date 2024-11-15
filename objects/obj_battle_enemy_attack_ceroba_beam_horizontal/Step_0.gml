var x_original, x_max;

switch (attack_beam_stage)
{
    case 0:
        attack_beam_width_current += attack_beam_width_inc;
        
        if (attack_beam_width_current >= attack_beam_width)
        {
            attack_beam_width_current = attack_beam_width;
            attack_beam_stage = 1;
            attack_beam_draw_color = make_colour_rgb(230, 50, 50);
            screenshake = true;
            audio_stop_sound(snd_kamehamehacharge);
            audio_play_sound(snd_kamehamehablast, 1, 0);
        }
        
        attack_beam_draw_alpha = (attack_beam_width_current / attack_beam_width) * 0.5;
        break;
    
    case 1:
        if (attack_beam_grow == true)
        {
            if (attack_beam_width_current < (attack_beam_width + attack_beam_width_fluctuation))
                attack_beam_width_current += 2;
            else
                attack_beam_grow = false;
        }
        
        if (attack_beam_grow == false)
        {
            if (attack_beam_width_current > (attack_beam_width - attack_beam_width_fluctuation))
                attack_beam_width_current -= 2;
            else
                attack_beam_grow = true;
        }
        
        if (attack_beam_timer > 0)
            attack_beam_timer -= 1;
        else
            attack_beam_stage = 2;
        
        break;
    
    case 2:
        if (attack_beam_width_current > 0)
            attack_beam_width_current -= 8;
        else
            instance_destroy();
        
        break;
}

if (attack_beam_stage == 0)
    exit;

x_original = 0;
x_max = room_width;

if (obj_heart_battle_fighting_parent.vulnerable == true && point_in_rectangle(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, x_original, y - (attack_beam_width_current / 2), x_max, y + (attack_beam_width_current / 2)))
{
    with (obj_heart_battle_fighting_parent)
    {
        if (global.current_pp_self > 0)
        {
            instance_create(x, y, obj_heart_battle_effect_expand);
            
            for (i = 0; i < 5; i++)
                instance_create(x, y, obj_heart_battle_effect_shard);
            
            global.current_pp_self -= 1;
            audio_play_sound(snd_mirrorbreak1, 20, false);
        }
        else
        {
            global.max_hp_self -= 3;
            global.current_hp_self -= 3;
            audio_play_sound(snd_ceroba_hurt_red, 1, 0);
        }
        
        vulnerable = false;
        global.hit_self = true;
        alarm[0] = global.invulnerability_self;
    }
}
