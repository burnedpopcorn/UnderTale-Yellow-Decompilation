scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
scr_cutscene_start();
scr_radio_fade(0, 0);

if (global.dunes_flag[22] == 0)
{
    instance_create(720, 375, obj_starlo_npc);
    instance_create(700, 375, obj_player_npc);
    obj_player_npc.npc_direction = "down";
    __view_set(e__VW.Object, 0, obj_starlo_npc);
    instance_create(920, 385, obj_ace_npc);
    instance_create(920, 400, obj_mooch_npc);
    instance_create(440, 390, obj_moray_npc);
    instance_create(720, 680, obj_ed_npc);
}
else
{
    instance_create(700, 375, obj_player_npc);
    obj_player_npc.npc_direction = "down";
    instance_create(720, 600, obj_starlo_npc);
    
    with (obj_starlo_npc)
    {
        up_sprite = spr_starlo_up_walk;
        right_sprite = spr_starlo_sad_right_walk;
        down_sprite = spr_starlo_sad_down_walk;
        left_sprite = spr_starlo_sad_left_walk;
        up_sprite_idle = spr_starlo_up_talk;
        right_sprite_idle = spr_starlo_sad_right_talk;
        down_sprite_idle = spr_starlo_sad_down_talk;
        left_sprite_idle = spr_starlo_sad_left_talk;
    }
    
    instance_create(730, 420, obj_ace_npc);
    instance_create(750, 375, obj_mooch_npc);
    instance_create(660, 375, obj_moray_npc);
    instance_create(690, 420, obj_ed_npc);
    obj_ace_npc.npc_direction = "up";
    obj_ed_npc.npc_direction = "up";
    obj_moray_npc.npc_direction = "right";
    obj_mooch_npc.npc_direction = "left";
    scene = 21;
}
