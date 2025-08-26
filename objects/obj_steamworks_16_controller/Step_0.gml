switch (scene)
{
    case 0:
        if (instance_exists(obj_ex))
        {
            persistent = true;
            cutscene_advance();
        }
        
        break;
    
    case 1:
        if (room != rm_battle)
            exit;
        
        cutscene_advance();
        break;
    
    case 2:
        if (room == rm_battle)
            exit;
        
        if (instance_exists(obj_enemy_kill_check_pacifist_steamworks))
        {
            instance_destroy();
            exit;
        }
        
        instance_destroy(global.party_member);
        instance_create(250, 190, obj_ceroba_npc);
        obj_ceroba_npc.npc_direction = "left";
        obj_pl.x = 220;
        obj_pl.y = 190;
        obj_pl.direction = 0;
        scr_cutscene_start();
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(2);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* They're gone.";
            message[1] = "* Sigh... This is so#  confusing...";
            message[2] = "* I thought Axis said he#  was the last of his#  kind?";
            message[3] = "* Wait... he introduced#  himself as \"Model 014\".";
            message[4] = "* There must have been 13#  other guard-bot#  prototypes.";
            message[5] = "* Guess we're lucky only#  one still functions,#  huh.";
            message[6] = "* Still, this thing#  definitely wasn't a#  guard-bot...";
            message[7] = "* We don't know how many#  other robot types are#  out there.";
            message[8] = "* We'll figure it out in#  due time, I'm sure.";
            message[9] = "* Just... be extremely#  careful.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_surprised;
            prt[4] = spr_portrait_ceroba_neutral;
            prt[5] = spr_portrait_ceroba_snarky;
            prt[6] = spr_portrait_ceroba_neutral;
            prt[7] = spr_portrait_ceroba_neutral;
            prt[8] = spr_portrait_ceroba_closed_eyes;
            prt[9] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 5:
        with (instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y, global.party_member))
        {
            sprite_index = left_sprite_idle;
            npc_reset = true;
        }
        
        instance_destroy(obj_ceroba_npc);
        global.sworks_flag[4] = 1;
        cutscene_end();
        break;
}
