if (live_call())
    return global.live_result;

if (damaged_stage == 0 && image_alpha < 1)
    image_alpha += 0.1;

if (image_alpha >= 1)
{
    with (obj_heart_yellow_shot)
    {
        if (place_meeting(x, y, obj_martlet_final_armor))
        {
            other.damage_flash_timer = 3;
            other.armor_hp -= 1;
            other.hit_shake = 3;
            audio_play_sound(snd_arc_hit, 0.1, 0);
            instance_destroy();
        }
    }
}

if (damage_flash_timer > 0)
    damage_flash_timer -= 1;

if (damaged_stage == 0)
{
    if (armor_hp <= ((armor_hp_max / 4) * 3))
    {
        audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
        damaged_stage = 1;
        hit_shake = 4;
        var xp = x;
        var yp = y;
        part_emitter_region(armr_ps, armr_pe_effect_1, xp - 1, xp + 1, yp - 1, yp + 1, 0, 0);
        part_emitter_burst(armr_ps, armr_pe_effect_1, armr_pt_effect_1, 3);
    }
}
else if (damaged_stage == 1)
{
    if (armor_hp <= ((armor_hp_max / 4) * 2))
    {
        audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
        damaged_stage = 2;
        hit_shake = 5;
        part_emitter_burst(armr_ps, armr_pe_effect_1, armr_pt_effect_1, 4);
    }
}
else if (damaged_stage == 2)
{
    if (armor_hp <= (armor_hp_max / 4))
    {
        audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
        damaged_stage = 3;
        hit_shake = 6;
        part_emitter_burst(armr_ps, armr_pe_effect_1, armr_pt_effect_1, 5);
    }
}
else if (damaged_stage == 3)
{
    if (armor_hp <= 0)
    {
        audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
        damaged_stage = 4;
        hit_shake = 7;
        part_emitter_burst(armr_ps, armr_pe_effect_1, armr_pt_effect_1, 6);
    }
}

if (hit_shake > 0)
{
    x = xstart + choose(-hit_shake, hit_shake);
    y = ystart + choose(-hit_shake, hit_shake);
    
    if (damaged_stage < 4 || hit_shake > 1)
        hit_shake--;
}
else
{
    x = xstart;
    y = ystart;
}

if (damaged_stage == 4)
{
    if (white_fade_alpha < 1)
    {
        white_fade_alpha += 0.05;
    }
    else
    {
        damaged_stage = 5;
        alarm[0] = 60;
    }
}

if (damaged_stage == 5)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
}

if (fade_out == true)
{
    if (fade_alpha < 1)
        fade_alpha += 0.025;
    else if (!alarm[2])
        alarm[2] = 60;
}
