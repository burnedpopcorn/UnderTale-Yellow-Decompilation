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
var actor_ceroba = instance_create(220, 170, obj_ceroba_npc);
var actor_starlo = instance_create(180, 205, obj_starlo_npc);
actor_ceroba.npc_direction = "up";
actor_starlo.npc_direction = "up";
actor_starlo.down_sprite_idle = spr_starlo_sad_down_talk;
actor_starlo.left_sprite_idle = spr_starlo_sad_left_talk;
actor_starlo.right_sprite_idle = spr_starlo_sad_right_talk;
actor_starlo.down_sprite = spr_starlo_sad_down_walk;
actor_starlo.left_sprite = spr_starlo_sad_left_walk;
actor_starlo.right_sprite = spr_starlo_sad_right_walk;
