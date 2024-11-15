scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if (global.geno_complete[3] == false)
{
    instance_destroy();
    exit;
}
else if (global.geno_complete[4] == false)
{
    obj_axis_npc.action_sprite = false;
}

obj_axis_npc.left_sprite = spr_axis_damaged_left;
obj_axis_npc.left_sprite_idle = spr_axis_damaged_left;
obj_axis_npc.right_sprite = spr_axis_damaged_right;
obj_axis_npc.down_sprite_idle = spr_axis_damaged_down;
obj_axis_npc.up_sprite = spr_axis_damaged_up;

if (global.sworks_flag[31] == 1)
{
    instance_create(0, 0, obj_steamworks_35_cutscene_geno_outro_alt);
    instance_destroy();
    exit;
}
else if (global.sworks_flag[31] == 2)
{
    instance_destroy(obj_axis_npc);
    instance_destroy();
    exit;
}
else if (global.sworks_flag[31] >= 3)
{
    if (global.route == 3)
    {
        obj_axis_npc.action_sprite = true;
        obj_axis_npc.sprite_index = spr_axis_down_dead;
        obj_axis_npc.image_speed = false;
        instance_create(0, 0, obj_steamworks_35_cutscene_geno_outro);
    }
    else
    {
        obj_axis_npc.action_sprite = true;
        obj_axis_npc.sprite_index = spr_axis_down_dead_regular;
        obj_axis_npc.image_speed = false;
    }
    
    instance_destroy();
    exit;
}
