function cutscene_npc_set_sprites(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
{
    with (argument0)
    {
        up_sprite = argument1;
        right_sprite = argument2;
        down_sprite = argument3;
        left_sprite = argument4;
        up_sprite_idle = argument5;
        right_sprite_idle = argument6;
        down_sprite_idle = argument7;
        left_sprite_idle = argument8;
    }
    
    cutscene_advance();
}
