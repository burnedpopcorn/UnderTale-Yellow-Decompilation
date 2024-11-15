var hit_gen;

image_angle = direction;
image_alpha = lerp(image_alpha, 1, 0.5);
image_xscale = lerp(image_alpha, 1, 0.15);

if (image_alpha > 0.99)
    image_alpha = 1;

if (image_xscale > 0.99)
    image_alpha = 1;

if (image_index >= (image_number - 1) && image_speed > 0)
{
    image_speed = 0;
    image_index = image_number - 1;
}

if (place_meeting(x, y, obj_axis_body))
{
    instance_destroy();
    audio_play_sound(snd_monster_damage_hit, 1, 0);
    obj_axis_body.axis_damaged_act = true;
    global.special_action_count += 1;
    global.enemy_mode += 1;
    global.attack_repeat = 0;
    
    with (obj_axis_attack_controller_parent)
        instance_destroy();
}

hit_gen = instance_place(x, y, obj_battle_enemy_axis_generator);

if (hit_gen != -4)
{
    instance_destroy(hit_gen);
    audio_play_sound(snd_monster_damage_hit, 1, 0);
    global.special_action_count += 1;
    global.enemy_mode += 1;
    global.attack_repeat = 0;
    
    with (obj_axis_attack_controller_parent)
        instance_destroy();
}
