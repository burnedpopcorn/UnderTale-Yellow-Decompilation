if (place_meeting(x, y, obj_pl) && scene == 0)
{
    scr_cutscene_start();
    scene = 1;
}

if (scene == 1)
{
    cutscene_dialogue();
    
    with (msg)
    {
        sndfnt_array[0] = 108;
        message[0] = "* Hey Clover, come back here.#  I think I figured it out.";
    }
}
else if (scene == 2)
{
    cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
}
else if (scene == 3)
{
    cutscene_npc_walk_relative(1168, 0, 30, 2, "y", "down");
}
else if (scene == 4)
{
    instance_destroy(obj_player_npc);
    scr_cutscene_end();
    scene = 0;
}
