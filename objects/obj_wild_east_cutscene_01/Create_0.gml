if (global.dunes_flag[20] > 0)
{
    instance_destroy();
    exit;
}

instance_create(720, 575, obj_starlo_npc);
instance_create(680, 635, obj_ed_npc);
instance_create(720, 635, obj_moray_npc);
instance_create(760, 635, obj_mooch_npc);
instance_create(760, 635, obj_ace_npc);
scene = 0;
