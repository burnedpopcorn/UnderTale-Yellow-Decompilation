function cutscene_npc_set_sprites(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    with (arg0)
    {
        up_sprite = arg1;
        right_sprite = arg2;
        down_sprite = arg3;
        left_sprite = arg4;
        up_sprite_idle = arg5;
        right_sprite_idle = arg6;
        down_sprite_idle = arg7;
        left_sprite_idle = arg8;
    }
    
    cutscene_advance();
}
