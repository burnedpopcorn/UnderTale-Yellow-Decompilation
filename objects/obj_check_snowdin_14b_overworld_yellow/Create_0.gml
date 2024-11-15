if (global.geno_complete[2])
{
    obj_rodney_snowdin_14b_overworld_yellow.sprite_index = spr_piano;
    instance_destroy(obj_rodney_head_snowdin_14b_overworld_yellow);
    obj_noteblock_snowdin_14b_overworld_yellow.sprite_index = spr_drums;
    instance_destroy(obj_noteblock_head_snowdin_14b_overworld_yellow);
    obj_soundtrack_snowdin_14b_overworld_yellow.sprite_index = spr_violin;
    instance_destroy(obj_soundtrack_head_snowdin_14b_overworld_yellow);
    instance_destroy(obj_couchbear_snowdin_14b_overworld_yellow);
    instance_destroy(obj_barnpc_snowdin14b);
    instance_destroy(obj_tablenpc_snowdin_14b);
    obj_shopkeeper_snowdin_14b_overworld_yellow.image_alpha = 0;
}

if (global.snowdin_flag[13] != 0)
{
    instance_destroy(obj_rodney_snowdin_14b_overworld_yellow);
    instance_destroy(obj_rodney_head_snowdin_14b_overworld_yellow);
    instance_destroy(obj_noteblock_snowdin_14b_overworld_yellow);
    instance_destroy(obj_noteblock_head_snowdin_14b_overworld_yellow);
    instance_destroy(obj_soundtrack_snowdin_14b_overworld_yellow);
    instance_destroy(obj_soundtrack_head_snowdin_14b_overworld_yellow);
    instance_destroy(obj_tablenpc_snowdin_14b);
    instance_create_depth(212, 116, -100, obj_chair_man_snowdin);
}
