var starlo;

starlo = 1169;

if (starlo.interact)
    other.scene++;

switch (scene)
{
    case 1:
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = starlo;
            message[0] = "* Are ya ready to begin?";
            prt[0] = 417;
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                message[1] = "* Did ya talk to the#  townsfolk? Explore#  every nook and cranny?";
                message[2] = "* You're gunna need to if#  you wanna be a good...#  deputy.";
                message[3] = "* That's right, kid!";
                message[4] = "* I'm heavily considerin'#  you for my coveted#  sidekick position!";
                message[5] = "* Now, don't get too high#  and mighty just yet.";
                message[6] = "* To be a deputy, you#  gotta know how to#  wrangle the \"horses.\"";
                message[7] = "* Me and my posse are#  gunna show you how it's#  done 'round here.";
                message[8] = "* I wouldn't drag anyone#  off the road and give#  them special treatment.";
                message[9] = "* You'll hav'ta prove#  yer gunslingin' skills#  to me.";
                message[10] = "* That bein' said, let's#  go meet up with the#  others!";
                prt[0] = 417;
                prt[1] = 417;
                prt[2] = 415;
                prt[3] = 422;
                prt[4] = 417;
                prt[5] = 419;
                prt[6] = 419;
                prt[7] = 417;
                prt[8] = 417;
                prt[9] = 417;
                prt[10] = 417;
                scr_cutscene_start();
            }
            
            if (outcome == 2)
            {
                message[1] = "* No rush.";
                message[2] = "* Make yerself at home.";
                prt[1] = 417;
                prt[2] = 417;
                other.scene = 0;
            }
        }
        
        if (!global.dialogue_open)
        {
            scr_camera_move(obj_pl.x, obj_pl.y, 1);
            npc_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            npc_clover.x_dest[0] = 90;
            npc_clover.y_dest[0] = 360;
            npc_clover.axis_override = "x";
            starlo.x_dest[0] = 90;
            starlo.y_dest[0] = 360;
            starlo.axis_override = "x";
            starlo.can_walk = false;
            other.timer = 30;
            other.scene++;
        }
        
        break;
    
    case 2:
        if (!scr_timer())
            exit;
        
        starlo.can_walk = true;
        timer = 30;
        scene++;
        break;
    
    case 3:
        if (!scr_timer())
            exit;
        
        npc_clover.can_walk = true;
        npc_clover.walk_speed = 3;
        timer = 30;
        scene++;
        break;
    
    case 4:
        if (npc_clover.npc_arrived == true && !scr_timer())
        {
            global.dunes_flag[20] = 2;
            trn = instance_create(0, 0, obj_transition);
            trn.newRoom = 127;
            trn.xx = 720;
            trn.yy = 180;
            scene++;
        }
        
        break;
}
