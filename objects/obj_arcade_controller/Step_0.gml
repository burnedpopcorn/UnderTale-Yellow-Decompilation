if (arcade_intro == true)
    exit;

if (arcade_game_win)
{
    audio_stop_sound(mus_mew);
    global.dunes_flag[25] = true;
    
    if (keyboard_multicheck_pressed(vk_nokey) || keyboard_multicheck_pressed(vk_anykey))
        room_restart();
    
    exit;
}

if (arcade_game_over)
{
    if (keyboard_multicheck_pressed(vk_nokey) || keyboard_multicheck_pressed(vk_anykey))
    {
        audio_sound_gain(mus_mew_boss, 1, 0);
        audio_sound_gain(mus_mew, 1, 0);
        global.last_room_overworld = room;
        room_restart();
    }
    
    exit;
}

var x_min = 90;
var x_max = 225;
var y_min = 60;
var y_max = 140;

if (arcade_boss == false)
{
    if (irandom(arcade_prnd[0]) == 1)
    {
        instance_create(random_range(x_min, x_max), 40, obj_arcade_enemy);
        arcade_prnd[0] = 180;
    }
    else if (arcade_prnd[0] > 3)
    {
        arcade_prnd[0] -= 3;
    }
    
    if (irandom(arcade_prnd[1]) == 1)
    {
        instance_create(choose(x_min - 40, x_max + 40), random_range(y_min, y_max), obj_arcade_ghost);
        arcade_prnd[1] = 220;
    }
    else if (arcade_prnd[1] > 3)
    {
        arcade_prnd[1] -= 3;
    }
}

if (arcade_boss == true)
{
    if (irandom(arcade_prnd[2]) == 1)
    {
        instance_create(random_range(x_min, x_max), 40, obj_arcade_upgrade);
        arcade_prnd[2] = 1000;
    }
    else
    {
        arcade_prnd[2] -= 1;
    }
}

if (!audio_is_playing(mus_mew_intro) && !audio_is_playing(mus_mew))
{
    audio_play_sound(mus_mew, 1, 1);
    audio_sound_gain(mus_mew, 1, 0);
}

if (arcade_score >= arcade_upgrade_score)
{
    arcade_upgrade_score += (arcade_upgrade_score + 50);
    instance_create(random_range(x_min, x_max), 40, obj_arcade_upgrade);
}

if (arcade_score >= arcade_miniboss_score && !arcade_boss)
{
    arcade_miniboss_score += (arcade_miniboss_score + 100);
    arcade_boss = true;
    instance_create(160, 0, obj_arcade_swordsman);
}

if (arcade_score >= arcade_boss_score && !arcade_boss)
{
    arcade_boss_score += (arcade_boss_score + 500);
    arcade_miniboss_score += 500;
    arcade_boss = true;
    audio_sound_gain(mus_mew, 0, 2000);
    alarm[2] = 90;
}
