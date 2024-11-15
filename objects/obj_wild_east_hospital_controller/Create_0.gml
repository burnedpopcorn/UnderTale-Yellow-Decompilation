if (global.route == 3)
{
    instance_destroy();
    exit;
}

instance_create(50, 150, obj_npc_doctor);
instance_create(222, 114, obj_npc_sleepo);

switch (global.dunes_flag[20])
{
    case 1:
        instance_create(117, 114, obj_npc_karen);
        break;
    
    case 3:
        instance_create(117, 114, obj_npc_owen);
        break;
    
    case 5:
        instance_create(117, 112, obj_npc_marlyn);
        break;
    
    case 7:
        instance_create(117, 114, obj_npc_train_bed);
        break;
    
    case 9:
        instance_create(117, 112, obj_npc_blembino_break_6);
        break;
}

instance_destroy();
