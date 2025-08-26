if (global.route == 3)
{
    instance_destroy(obj_npc_bartender);
    instance_destroy(obj_saloon_audience);
    instance_destroy();
    exit;
}

switch (global.dunes_flag[20])
{
    case 0:
        instance_create(0, 0, obj_saloon_cutscene_01);
        break;
    
    case 1:
        if (global.dunes_flag[21] >= 1)
            instance_create(0, 0, obj_saloon_cutscene_02);
        
        break;
    
    case 2:
        instance_create(0, 0, obj_saloon_cutscene_03);
        break;
    
    case 3:
        instance_create(0, 0, obj_saloon_cutscene_04);
        instance_create_depth(200, 110, -100, obj_chair_man);
        break;
    
    case 5:
        instance_create(0, 0, obj_saloon_cutscene_05);
        break;
    
    case 7:
        instance_create(0, 0, obj_saloon_cutscene_06);
        break;
}

if (global.route == 1 && global.sworks_flag[0] > 0 && global.dunes_flag[24] == 1 && global.sworks_flag[61] == 0)
{
    instance_create_depth(201, 128, -128, obj_npc_moray_guitar);
    var ace = instance_create_depth(238, 164, -128, obj_npc_ace_backtrack);
    ace.npc_direction = "up";
    instance_create_depth(140, 350, -128, obj_npc_mooch_backtrack);
    instance_create_depth(190, 200, -128, obj_npc_ed_backtrack);
    var starlo = instance_create_depth(187, 37, -128, obj_npc_starlo_backtrack);
    var ceroba = instance_create_depth(216, 37, -128, obj_npc_ceroba_backtrack);
}
else
{
    switch (global.dunes_flag[20])
    {
        case 0:
        case 1:
            instance_create(140, 304, obj_npc_producer);
            instance_create(273, 266, obj_npc_mailwhale_break1);
            instance_create(247, 325, obj_npc_cup_break_1);
            instance_create(303, 174, obj_npc_pyramid_break_1);
            
            if (global.dunes_flag[21] < 1)
            {
                instance_create(129, 200, obj_npc_searby_break_1);
                instance_create(199, 193, obj_npc_shane_break_1);
            }
            
            instance_create(335, 275, obj_npc_finger_break_1);
            instance_create(70, 354, obj_npc_bubblo_break_1);
            instance_create(65, 172, obj_npc_froggits_break_1);
            instance_create(305, 368, obj_npc_salloon_card3);
            instance_create(321, 354, obj_npc_salloon_card2);
            instance_create(342, 336, obj_npc_salloon_card1);
            break;
        
        case 2:
        case 3:
            instance_create(140, 304, obj_npc_producer);
            
            if (global.dunes_flag[3] > 0)
            {
                mo = instance_create(270, 260, obj_npc_mo_saloon);
                mo.image_xscale = -1;
            }
            
            break;
        
        case 5:
            instance_create(272, 236, obj_npc_blembino);
            instance_create(222, 200, obj_npc_foreman_break_3);
            break;
        
        case 7:
            instance_create(272, 236, obj_npc_blembino);
            instance_create(272, 279, obj_npc_rephil_break_4);
            break;
        
        case 9:
            if (global.dunes_flag[24] == 0)
                instance_create(303, 174, obj_npc_pyramid_break_5);
            
            break;
    }
}

instance_destroy();
