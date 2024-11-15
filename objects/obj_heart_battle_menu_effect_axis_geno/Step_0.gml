var turns_passed, turns_passed_max, main_heart, modifier, probability, twitch_sound, twitch_heart, twitch_range;

if (live_call())
    return global.live_result;

turns_passed = global.attack_cycle;
turns_passed_max = global.attack_cycle_max;

if (in_battle_twitch == true && !in_battle_twitch_finished)
{
    main_heart = 2979;
    
    if (in_battle_twitch_timer < 100)
        in_battle_twitch_timer++;
    else
        in_battle_twitch_finished = true;
    
    modifier = in_battle_twitch_timer / 100;
    probability = modifier * 80;
    
    if (random(100) < probability)
    {
        twitch_sound = audio_play_sound(snd_soul_charge, 1, 0);
        audio_sound_pitch(twitch_sound, 1 + modifier);
        twitch_heart = instance_create_depth(main_heart.x + random_range(-3, 3), main_heart.y + random_range(-3, 3), -800, obj_heart_battle_menu_effect_axis_geno_twitch);
        
        with (twitch_heart)
        {
            twitch_range = (turns_passed / turns_passed_max) * 40;
            image_angle = random_range(-twitch_range, twitch_range);
        }
    }
    
    exit;
}

if (instance_exists(obj_heart_battle_menu) && obj_heart_battle_menu.image_alpha > 0)
    main_heart = 2971;
else if (instance_exists(obj_heart_battle_menu_act) && obj_heart_battle_menu_act.image_alpha > 0)
    main_heart = 2975;
else if (instance_exists(obj_heart_battle_menu_fight) && obj_heart_battle_menu_fight.image_alpha > 0)
    main_heart = 2972;
else if (instance_exists(obj_heart_battle_menu_item) && obj_heart_battle_menu_item.image_alpha > 0)
    main_heart = 2976;
else if (instance_exists(obj_heart_battle_menu_mercy) && obj_heart_battle_menu_mercy.image_alpha > 0)
    main_heart = 2977;
else if (instance_exists(obj_heart_battle_menu_flee) && obj_heart_battle_menu_flee.image_alpha > 0)
    main_heart = 2978;
else
    exit;

probability = (turns_passed / turns_passed_max) * 70;

if (random(100) < probability)
{
    twitch_heart = instance_create_depth(main_heart.x, main_heart.y, -800, obj_heart_battle_menu_effect_axis_geno_twitch);
    
    with (twitch_heart)
    {
        twitch_range = (turns_passed / turns_passed_max) * 40;
        image_angle = random_range(-twitch_range, twitch_range);
    }
}
