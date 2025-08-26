switch (scene)
{
    case 0:
        if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
            cutscene_advance();
        
        break;
    
    case 1:
        scr_cutscene_start();
        
        if (global.sworks_flag[38] >= 3)
        {
            with (obj_factory_04_elevator)
                scene += 1;
            
            instance_destroy();
            exit;
        }
        
        if (!instance_exists(obj_factory_numpad_overlay))
            instance_create(0, 0, obj_factory_numpad_overlay);
        
        scene++;
        break;
    
    case 2:
        if (obj_factory_numpad_overlay.entry_correct == 1)
        {
            with (obj_factory_04_elevator)
                scene += 1;
            
            global.sworks_flag[38] = 3;
            instance_destroy();
        }
        else if (obj_factory_numpad_overlay.entry_correct == 0)
        {
            scene++;
        }
        
        break;
    
    case 3:
        if (!instance_exists(obj_factory_numpad_overlay))
        {
            scr_cutscene_end();
            scene = 0;
        }
        
        break;
}
