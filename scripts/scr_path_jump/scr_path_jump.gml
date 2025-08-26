function scr_path_jump(arg0, arg1, arg2, arg3)
{
    with (arg0)
    {
        jump_path = path_add();
        path_add_point(jump_path, arg0.x, arg0.y, 100);
        path_add_point(jump_path, arg1 + (sign(arg0.x - arg1) * min(abs(arg0.x - arg1), 15)), arg2 - arg3, 75);
        path_add_point(jump_path, arg1, arg2, 100);
        path_set_kind(jump_path, 1);
        path_set_closed(jump_path, false);
        path_start(jump_path, 4, path_action_stop, false);
        audio_play_sound(snd_playerjump, 1, 0);
    }
}
