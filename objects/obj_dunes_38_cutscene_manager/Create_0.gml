if (global.route == 3)
{
    instance_destroy();
    exit;
}

switch (global.dunes_flag[20])
{
    case 1:
        instance_create(160, 390, obj_npc_cowcat);
        break;
    
    case 3:
        instance_create(433, 402, obj_npc_ed_break_2);
        break;
    
    case 5:
        instance_create(53, 393, obj_npc_ceroba_break_3);
        break;
    
    case 9:
        if (global.dunes_flag[24] == 0)
            instance_create(204, 393, obj_npc_virgil_break_5);
        
        break;
}

if (global.dunes_flag[20] != 2)
{
    instance_destroy();
    exit;
}

scene = 0;
timer = 0;
cutscene_timer = 0;
scr_cutscene_start();
