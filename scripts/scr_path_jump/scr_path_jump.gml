function scr_path_jump(argument0, argument1, argument2, argument3)
{
    with (argument0)
    {
        jump_path = path_add();
        path_add_point(jump_path, argument0.x, argument0.y, 100);
        path_add_point(jump_path, argument1 + (sign(argument0.x - argument1) * min(abs(argument0.x - argument1), 15)), argument2 - argument3, 75);
        path_add_point(jump_path, argument1, argument2, 100);
        path_set_kind(jump_path, 1);
        path_set_closed(jump_path, false);
        path_start(jump_path, 4, path_action_stop, false);
        audio_play_sound(snd_playerjump, 1, 0);
    }
}
