scene = 0;
timer = 0;
cutscene_timer = 0;

if (global.sworks_flag[10] > 0)
{
    instance_destroy(obj_dunes_08b_mo);
    instance_destroy(obj_dunes_08b_dispenser);
    instance_destroy(obj_dunes_08b_stand);
    instance_destroy();
    exit;
}

if (global.route == 3)
    instance_destroy(obj_dunes_08b_dispenser);

if (global.dunes_flag[3] == 1)
{
    var mo = instance_create(205, 230, obj_dunes_08b_mo);
    instance_create(200, 240, obj_dunes_08b_stand);
    instance_destroy(obj_dunes_08b_dispenser);
    
    with (mo)
    {
        can_walk = false;
        npc_direction = "down";
        up_sprite = spr_mo_up_dunes;
        right_sprite = spr_mo_right_dunes;
        down_sprite = spr_mo_down_dunes;
        left_sprite = spr_mo_left_dunes;
        up_sprite_idle = spr_mo_talk_up_dunes;
        right_sprite_idle = spr_mo_right_dunes;
        down_sprite_idle = spr_mo_talk_down_dunes;
        left_sprite_idle = spr_mo_left_dunes;
    }
}

if (global.dunes_flag[3] == 2)
{
    instance_destroy(obj_dunes_08b_mo);
    instance_destroy(obj_dunes_08b_dispenser);
    instance_destroy(obj_dunes_08b_stand);
    instance_destroy();
}
