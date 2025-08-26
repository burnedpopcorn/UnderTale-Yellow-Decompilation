spear_spawn_delay -= 1;

if (spear_spawn_delay <= 0)
{
    spear_spawn_delay = 30;
    var final_spear = false;
    var spear_x, spear_y;
    
    if (spear_spawn_count > 0 && obj_pl.x < 1580)
    {
        spear_x = irandom_range(obj_pl.x + 20, obj_pl.x + 100);
        spear_y = obj_pl.y - 50;
    }
    else
    {
        spear_x = obj_pl.x + 160;
        spear_y = obj_pl.y + 15;
        final_spear = true;
        scr_cutscene_start();
    }
    
    var spear = instance_create_depth(spear_x, spear_y, obj_pl.depth - 1, obj_flowey_world_spear);
    
    if (final_spear)
    {
        spear.speed_max = 18;
        spear.image_alpha = 1;
        spear.scene = 1;
        audio_play_sound(snd_undertale_swoosh, 1, 0);
    }
    
    spear_spawn_count -= 1;
}
