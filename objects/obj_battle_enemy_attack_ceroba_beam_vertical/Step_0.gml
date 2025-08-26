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

var y_original = 0;
var y_max = room_height;

if (obj_heart_battle_fighting_parent.vulnerable == true && point_in_rectangle(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, x - (attack_beam_width_current / 2), y_original, x + (attack_beam_width_current / 2), y_max))
{
    global.max_hp_self -= 3;
    global.current_hp_self -= 3;
    audio_play_sound(snd_ceroba_hurt_red, 1, 0);
    
    with (obj_heart_battle_fighting_parent)
    {
        vulnerable = false;
        global.hit_self = true;
        alarm[0] = global.invulnerability_self;
    }
}
