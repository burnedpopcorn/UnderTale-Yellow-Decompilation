if (global.dunes_flag[35] >= 1)
{
    instance_destroy();
    
    with (instance_create(192, 130, obj_doorway))
    {
        image_xscale = 3.5;
        image_yscale = 1.25;
        nextroom = rm_steamworks_01;
        xx = 160;
        yy = 520;
    }
    
    exit;
}

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
actor_flowey = instance_create(220, 170, obj_flowey_npc);
actor_flowey.image_alpha = 0;
actor_flowey.image_speed = 0;
actor_flowey.npc_direction = "down";
