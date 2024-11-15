if (global.route == 2 && global.sworks_flag[40] == 2 && global.dunes_flag[41] == 0)
{
    instance_create(0, 0, obj_wild_east_endgame_cutscene_01);
    instance_destroy();
    exit;
}

if (global.route == 3 && global.geno_complete[3] == true)
{
    instance_create(0, 0, obj_wild_east_cutscene_01_murder);
    instance_destroy();
    exit;
}

switch (global.dunes_flag[20])
{
    case 0:
        instance_create(0, 0, obj_wild_east_cutscene_01);
        break;
    
    case 2:
        instance_create(0, 0, obj_wild_east_cutscene_02);
        break;
    
    case 4:
        instance_create(0, 0, obj_wild_east_cutscene_03);
        break;
    
    case 6:
        instance_create(0, 0, obj_wild_east_cutscene_04);
        break;
    
    case 8:
        instance_create(0, 0, obj_wild_east_cutscene_05);
        break;
    
    default:
        instance_create(720, 380, obj_determination);
        break;
}

switch (global.dunes_flag[20])
{
    case 1:
        instance_create(986, 367, obj_npc_ace_break_1);
        instance_create(249, 382, obj_npc_ed_break_1);
        instance_create(910, 277, obj_npc_moray_break_1);
        instance_create(556, 319, obj_npc_mooch_break_1);
        instance_create(466, 380, obj_npc_happycactus);
        obj_npc_mooch_break_1.npc_direction = "right";
        break;
    
    case 3:
        instance_create(645, 188, obj_npc_ace_break_2);
        instance_create(245, 377, obj_npc_mooch_break_2);
        instance_create(465, 381, obj_npc_kangarufus);
        instance_create(984, 362, obj_npc_virgil_break_2);
        break;
    
    case 4:
    case 5:
        instance_create(852, 218, obj_npc_cooper_break_3);
        instance_create(309, 365, obj_npc_gamer);
        instance_create(110, 493, obj_npc_virgil_break_3);
        break;
    
    case 6:
    case 7:
        instance_create(852, 218, obj_npc_cooper_break_3);
        instance_create(466, 376, obj_barnpc_wildeast);
        break;
    
    case 8:
        break;
    
    case 9:
        if (global.dunes_flag[24] == 1)
        {
            instance_create(780, 226, obj_npc_cowcat_break_6);
            instance_create(960, 366, obj_npc_happycactus_break_6);
            instance_create(466, 378, obj_npc_gamer_break_6);
        }
        
        if (global.dunes_flag[24] == 2)
            instance_create(201, 375, obj_npc_mooch_break_6);
        
        break;
}

instance_destroy();
