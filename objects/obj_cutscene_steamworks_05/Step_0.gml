switch (scene)
{
    case 0:
        if (obj_pl.y <= 210)
        {
            scr_cutscene_start();
            scene++;
        }
        
        break;
    
    case 1:
        cutscene_instance_create(200, 160, obj_steamworks_05_flowey);
        break;
    
    case 2:
        if (obj_steamworks_05_flowey.sprite_index != spr_flowey)
            exit;
        else
            cutscene_advance();
        
        break;
    
    case 3:
        cutscene_wait(0.15);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 96;
            talker[0] = 1996;
            message[0] = "* Howdy!";
            message[1] = "* Another team-up? You're#  wasting your time,#  buddy.";
            message[2] = "* So far, these monsters#  have only brought you#  misfortune.";
            message[3] = "* I feel like following#  that lady's orders won't#  end any differently.";
            message[4] = "* Especially with that#  \"lab\" business...";
            message[5] = "* Just try your best to#  move things along and#  not get sidetracked.";
            message[6] = "* Hopefully we can talk#  soon. Good luck, Clover!";
            prt[0] = 348;
            prt[1] = 347;
            prt[2] = 348;
            prt[3] = 348;
            prt[4] = 348;
            prt[5] = 348;
            prt[6] = 348;
        }
        
        break;
    
    case 5:
        with (obj_steamworks_05_flowey)
        {
            sprite_index = spr_floweyleave;
            image_speed = 0.2;
        }
        
        cutscene_advance();
        break;
    
    case 6:
        if (!instance_exists(obj_steamworks_05_flowey))
        {
            global.sworks_flag[7] = 1;
            instance_create(200, 160, obj_determination);
            instance_destroy();
            scr_cutscene_end();
        }
        
        break;
}
