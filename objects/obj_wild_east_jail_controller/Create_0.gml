if (global.route == 3)
{
    instance_destroy();
    exit;
}

if (global.dunes_flag[24] == 0)
    instance_create(206, 128, obj_npc_martlet_jail);
else
    instance_create(210, 128, obj_npc_kangarufus_break_6);

switch (global.dunes_flag[20])
{
    case 1:
        instance_create(120, 126, obj_npc_virgil_break_1);
        break;
    
    case 3:
        instance_create(260, 156, obj_npc_moray_break_2);
        break;
}

instance_destroy();
