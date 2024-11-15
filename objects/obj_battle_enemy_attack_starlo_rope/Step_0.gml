var soul_distance;

if (!instance_exists(obj_heart_battle_fighting_parent))
    exit;

if (rope_damaged == true)
{
    rope_damaged = false;
    rope_overlay_alpha = 1.5;
    audio_play_sound(snd_starlo_rope_shot, 1, 0);
    
    if (instance_exists(obj_battle_enemy_attack_starlo_take_aim_one_checker))
    {
        with (obj_battle_enemy_attack_starlo_take_aim_one_checker)
            starlo_take_aim_rope_hit = true;
        
        instance_create(x, y, obj_battle_enemy_attack_starlo_rope_particles);
    }
    
    if (instance_exists(obj_battle_enemy_attack_starlo_take_aim_checker))
    {
        with (obj_battle_enemy_attack_starlo_take_aim_checker)
            starlo_take_aim_rope_hit = true;
        
        instance_destroy();
        instance_create(x, y, obj_battle_enemy_attack_starlo_rope_particles);
    }
}

soul_distance = point_distance(x, y, obj_heart_battle_fighting_red.x, obj_heart_battle_fighting_red.y);

if (soul_distance > 28 && rope_strain_noloop == false)
{
    audio_play_sound(snd_starlo_rope_strain, 1, 0);
    rope_strain_noloop = true;
}
else if (rope_strain_noloop == true && soul_distance < 20)
{
    rope_strain_noloop = false;
}

rope_overlay_alpha = lerp(rope_overlay_alpha, 0, 0.15);
rope_soul_overlay_alpha = lerp(rope_soul_overlay_alpha, 0, 0.2);

if (rope_soul_overlay_alpha < 0.1)
    rope_soul_overlay_alpha = 0;
