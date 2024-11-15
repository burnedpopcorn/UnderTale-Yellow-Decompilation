switch (global.dunes_flag[20])
{
    case 5:
        instance_create(62, 154, obj_npc_ed_asleep);
        instance_create(290, 83, obj_npc_mooch_asleep);
        instance_create(33, 79, obj_npc_moray_asleep);
        instance_create(181, 52, obj_npc_ace_asleep);
        exit;
        break;
    
    case 7:
        instance_create(287, 160, obj_npc_ceroba_break_4);
        break;
}

instance_destroy();
