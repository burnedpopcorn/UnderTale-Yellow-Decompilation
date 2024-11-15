var lvl_dif, modifier;

if (live_call())
    return global.live_result;

lvl_dif = target_lvl - initial_lvl;
modifier = timer_current / timer_max;
level_current = initial_lvl + (modifier * lvl_dif);
timer_current++;

if (timer_current == timer_max)
{
    audio_play_sound(snd_love_increased, 1, 0);
    global.player_level = target_lvl;
    global.max_hp_self = global.player_hp_next[global.player_level];
    global.current_hp_self = global.max_hp_self;
    global.player_attack = global.player_attack_next[global.player_level];
    global.player_defense = global.player_defense_next[global.player_level];
    instance_destroy();
    exit;
}

if (floor(level_current) > global.player_level)
{
    global.player_level = floor(level_current);
    global.max_hp_self = global.player_hp_next[global.player_level];
    global.current_hp_self = global.max_hp_self;
    global.player_attack = global.player_attack_next[global.player_level];
    global.player_defense = global.player_defense_next[global.player_level];
    audio_play_sound(snd_love_increased, 1, 0);
}
