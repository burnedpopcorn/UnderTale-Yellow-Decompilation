switch (scene)
{
    case 0:
        if (obj_pl.x < 790)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(1168, 700, 140, 3, "x", "up");
        break;
    
    case 2:
        cutscene_wait(1.25);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            
            if (global.geno_complete[4] == true)
            {
                message[0] = "* I. ..";
                message[1] = "* I DID ALL I C0ULD.";
                message[2] = "* I wAS OnLY ABLE TO sAVE#  A FEW buT...";
                message[3] = "* NoW_ I KN0W YOU WILL#  LE4VE ThIS PLaCE#  UNSATISFIED.";
                message[4] = "* . .";
                message[5] = "* TH3 SAME FaTE ThEY mET#  MAY AWAiT ME,";
                message[6] = "* BuT I WILL N0 LONG,ER#  RUN FRom YOU.";
                message[7] = "* ThAT CANN0N OF DE4TH#  YOU WIeLD iS STR0NG.. .";
                prt[0] = 3282;
                prt[1] = 3282;
                prt[2] = 3282;
                prt[3] = 3282;
                prt[4] = 3282;
                prt[5] = 3282;
                prt[6] = 3282;
                prt[7] = 3282;
            }
            else
            {
                message[0] = "* CoULDN'T GET us ALL,#  HUH?";
                message[1] = "* IT SE3MS MaNY BOTS#  EvADED Y0U.";
                message[2] = "* NoW_ I KN0W YOU WILL#  LE4VE ThIS PLaCE#  UNSATISFIED.";
                message[3] = "* BUT AS yOU CAN SEE, I#  AM STILL H3RE.";
                message[4] = "* WeLL, ,,";
                message[5] = "* I DECIdED I WILL N0#  LONG,ER RUN FRom YOU.";
                message[6] = "* ThAT CANN0N OF DE4TH#  YOU WIeLD iS STR0NG.. .";
                prt[0] = 3282;
                prt[1] = 3282;
                prt[2] = 3282;
                prt[3] = 3282;
                prt[4] = 3282;
                prt[5] = 3282;
                prt[6] = 3282;
            }
            
            position = 0;
        }
        
        break;
    
    case 4:
        cutscene_npc_walk(1166, obj_steamworks_35_trashcan.x + 20, obj_steamworks_35_trashcan.y - 1, 2, "x", "left");
        break;
    
    case 5:
        cutscene_wait(0.5);
        cutscene_advance(5.5);
        break;
    
    case 5.5:
        if (cutscene_npc_action_sprite(1166, 3549, 1, true))
        {
            obj_steamworks_35_trashcan.image_index = 1;
            obj_axis_npc.action_sprite = false;
            cutscene_npc_set_sprites(1166, 2592, 1728, 3681, 233, 488, 1728, 3681, 3415);
            cutscene_advance(6);
        }
        
        break;
    
    case 6:
        cutscene_npc_walk(1166, 700, 100, 3, "x", "down");
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            
            if (global.geno_complete[4] == true)
            {
                message[0] = "* BUT AS you CAN SEE, .";
                message[1] = "* I H4VE DRaWN A \"WEAP0n\"#  OF MY OWN_.";
                message[2] = "* NoW.. . AS THE K1DS#  SAY,";
                message[3] = "* COME AT ME.";
                prt[0] = 3282;
                prt[1] = 3282;
                prt[2] = 3282;
                prt[3] = 3282;
            }
            else
            {
                message[0] = "* BUT I H4VE DRaWN A#  \"WEAP0n\" OF MY OWN_.";
                message[1] = "* SO. ..";
                message[2] = "* WhY NOT TRY Y0UR LUCK?";
                prt[0] = 3282;
                prt[1] = 3282;
                prt[2] = 3282;
            }
            
            position = 0;
        }
        
        break;
    
    case 9:
        scr_audio_fade_out(cutscene_music, 650);
        cutscene_advance();
        break;
    
    case 10:
        cutscene_battle_initiate("axis genocide", true, true);
        cutscene_advance();
        break;
}
