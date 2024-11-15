event_inherited();

if (obj_axis_npc.interact)
    other.scene = 1;

if (global.route == 1 && global.sworks_flag[61] == 0)
{
    switch (scene)
    {
        case 1:
            scr_text();
            
            switch (npc_flag)
            {
                case 0:
                    cutscene_dialogue();
                    
                    with (msg)
                    {
                        color = true;
                        col_modif[0] = 16711935;
                        message[0] = "* WHO GOES THERE???";
                        message[1] = "* IT IS NOT YOU BECAUSE I#  GO THERE.";
                        message[2] = "* SCANNING_";
                        message_col[2][0] = "* SCANNING_";
                        prt[0] = 473;
                        prt[1] = 473;
                        sndfnt_array[0] = 111;
                        sndfnt_array[2] = 391;
                    }
                    
                    obj_axis_npc.npc_direction_hold = "nothing";
                    break;
                
                case 1:
                    with (msg)
                    {
                        talker[0] = 1166;
                        message[0] = "* YES, I HAD TO SCAN YOU#  TO REMEMBER.";
                        message[1] = "* IT IS STANDARD#  PROCEDURE AFTER A#  RECHARGE.";
                        message[2] = "* AH, THE PRECIOUS#  MEMORIES ARE FLOODING#  BACK.";
                        message[3] = "* WE ALMOST MURDERED EACH#  OTHER SO MANY TIMES.";
                        message[4] = "* LMAO.";
                        message[5] = "* WHAT? THAT IS A THING I#  SAY NOW.";
                        message[6] = "* SOUS-BORG TAUGHT ME.";
                        message[7] = "* IT MEANS \"LET'S MAKE AN#  OMELETTE.\"";
                        prt[0] = 473;
                        prt[1] = 473;
                        prt[2] = 473;
                        prt[3] = 473;
                        prt[4] = 473;
                        prt[5] = 473;
                        prt[6] = 473;
                        prt[7] = 473;
                    }
                    
                    scene = 0;
                    npc_flag += 1;
                    break;
                
                case 2:
                    with (msg)
                    {
                        talker[0] = 1166;
                        message[0] = "* SAY, WHERE DOES A BOT#  FIND A HAT LIKE YOURS?";
                        message[1] = "* I WOULD ROCK A CAP LIKE#  THAT.";
                        message[2] = "* MIGHT TURN SOME HEADS,#  YOU KNOW?";
                        message[3] = "* UH WELL, I SUPPOSE I#  NEVER MENTIONED IT#  BUT...";
                        message[4] = "* WOW, THIS IS#  EMBARRASSING.";
                        message[5] = "* I CAN FEEL MY FACE#  TURNING BRIGHT GRAY.";
                        message[6] = "* YOU KNOW WHAT?#  NEVERMIND.";
                        message[7] = "* IT IS BETWEEN ME AND MY#  E-DIARY.";
                        prt[0] = 473;
                        prt[1] = 473;
                        prt[2] = 473;
                        prt[3] = 473;
                        prt[4] = 473;
                        prt[5] = 473;
                        prt[6] = 473;
                        prt[7] = 473;
                    }
                    
                    scene = 0;
                    npc_flag += 1;
                    break;
                
                case 3:
                    with (msg)
                    {
                        talker[0] = 1166;
                        message[0] = "* HAVE FUN IN THE#  STEAMWORKS, HUMAN.";
                        message[1] = "* IF YOU PLAN TO TAKE A#  SWIM IN THE BOILING#  LAKE, BRING FLOATIES.";
                        message[2] = "* THE LIFEGUARD WAS#  RECENTLY PROMOTED TO A#  DEATHGUARD.";
                        message[3] = "* TRAGIC. LMAO.";
                        prt[0] = 473;
                        prt[1] = 473;
                        prt[2] = 473;
                        prt[3] = 473;
                    }
                    
                    scene = 0;
                    break;
            }
            
            break;
        
        case 2:
            if (global.dialogue_open)
                exit;
            
            scr_cutscene_start();
            
            with (obj_pl)
                scr_axis_clover_scan();
            
            cutscene_sfx_play(271, 1);
            audio_sound_pitch(snd_elevator, 2);
            break;
        
        case 3:
            cutscene_wait(3);
            break;
        
        case 4:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1166;
                message[0] = "* AH, HELLO \"HATTED#  HUMAN.\"";
                message[1] = "* HOPE YOU ARE WELL THIS#  FINE EVENING.";
                prt[0] = 473;
                prt[1] = 473;
            }
            
            break;
        
        case 5:
            scr_cutscene_end();
            scene = 0;
            npc_flag += 1;
            obj_axis_npc.npc_direction = "down";
            break;
    }
}
else if ((global.route == 2 || global.sworks_flag[61] == 1) && scene == 1)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                talker[0] = 1166;
                message[0] = "* HELLO, HUMAN.";
                message[1] = "* YOU CAUGHT ME ON A DATE#  WITH THE LOVELY.";
                message[2] = "* TURNS OUT I DID NOT#  HAVE TO RECHARGE.";
                message[3] = "* YEP, I CAN RUN ON LOVE#  ALONE. WHO KNEW?";
                message[4] = "* STILL, I DID SPEND SOME#  TIME IN MY LOCKER.";
                message[5] = "* WHY?";
                message[6] = "* SEVEN MINUTES IN#  HEAVEN.";
                prt[0] = 473;
                prt[1] = 473;
                prt[2] = 473;
                prt[3] = 473;
                prt[4] = 473;
                prt[5] = 473;
                prt[6] = 473;
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = 1166;
                message[0] = "* HOW INFORMAL OF ME.";
                message[1] = "* I DID NOT INTRODUCE YOU#  TO MY SPOUSE.";
                message[2] = "* THIS IS DAISY. ";
                message[3] = "* MY SPOUSE.";
                message[4] = "* THEY ARE NAMED AFTER#  THE FLOWER.";
                message[5] = "* IT IS MUCH DIFFERENT#  FROM THE PLANTS HERE.";
                message[6] = "* FOR ONE, IT HAS COLOR.";
                message[7] = "* FOR TWO, IT DOES NOT#  SMELL OF BLEACH.";
                message[8] = "* JUST LIKE MY SPOUSE.";
                prt[0] = 473;
                prt[1] = 473;
                prt[2] = 473;
                prt[3] = 473;
                prt[4] = 473;
                prt[5] = 473;
                prt[6] = 473;
                prt[7] = 473;
                prt[8] = 473;
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = 1166;
                message[0] = "* SOONER OR LATER...";
                message[1] = "* I SUPPOSE WE WILL HAVE#  TO ESTABLISH OUR NEW#  SOCIETY.";
                message[2] = "* THAT WILL BE TRICKY.";
                message[3] = "* MR. SCREEN WANTS THIS#  \"TYRANNICAL GOVERNMENT\"#  THING.";
                message[4] = "* I TRIED TO PLAY IT OUT.#  YOU KNOW, LOOK AT THE#  PROS AND CONS.";
                message[5] = "* BUT SADLY, I DO NOT SEE#  THE OTHER BOTS JIVING#  WITH IT.";
                message[6] = "* HATE TO CRUSH MR.#  SCREEN'S DREAMS, BUT IT#  IS WHAT IT IS.";
                prt[0] = 473;
                prt[1] = 473;
                prt[2] = 473;
                prt[3] = 473;
                prt[4] = 473;
                prt[5] = 473;
                prt[6] = 473;
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                color = true;
                col_modif[0] = 16711935;
                sndfnt_array[0] = 111;
                sndfnt_array[10] = 391;
                sndfnt_array[13] = 111;
                message[0] = "* SAY, WHERE DID THE TALL#  LADY GO?";
                message[1] = "* DID YOU NOT HAVE#  BUSINESS IN HOTLAND?";
                message[2] = "* OH NO.";
                message[3] = "* YOU DID NOT GET#  SEPARATED, DID YOU?";
                message[4] = "* I KNOW YOUNG FOLK GET#  LOST IN SUPERMARKETS ALL#  THE TIME.";
                message[5] = "* AND IF YOU THINK ABOUT#  IT...";
                message[6] = "* THE STEAMWORKS MIGHT BE#  BIGGER THAN A#  SUPERMARKET.";
                message[7] = "* WHAT IF... WHAT IF MY#  FUTURE CHILD GETS LOST#  IN HERE?";
                message[8] = "* THIS IS NOT GOOD. NOT#  GOOD AT ALL.";
                message[9] = "* YOU GOT ME SLIPPING#  INTO THE ANXIETY ZONE.";
                message[10] = "* *BEEP BEEP*";
                message[11] = "* ANXIETY ZONE REACHED_";
                message[12] = "* SEARCHING FOR RATIONAL_";
                message_col[10][0] = "* *BEEP BEEP*";
                message_col[11][0] = "* ANXIETY ZONE REACHED_";
                message_col[12][0] = "* SEARCHING FOR RATIONAL_";
                message[13] = "* OH, I KNOW.";
                message[14] = "* I WILL INSTALL A#  TRACKER IN MY CHILD.";
                message[15] = "* GENIUS. ";
                message[16] = "* I JUST SOLVED 90% OF#  PARENTAL PROBLEMS.";
                prt[0] = 473;
                prt[1] = 473;
                prt[2] = 473;
                prt[3] = 473;
                prt[4] = 473;
                prt[5] = 473;
                prt[6] = 473;
                prt[7] = 473;
                prt[8] = 473;
                prt[9] = 473;
                prt[13] = 473;
                prt[14] = 473;
                prt[15] = 473;
                prt[16] = 473;
            }
            
            npc_flag += 1;
            break;
        
        case 4:
            with (msg)
            {
                talker[0] = 1166;
                message[0] = "* THAT IS ALL THE#  \"CATCHING UP\" I HAD#  PLANNED.";
                message[1] = "* HOPE YOUR LIFE TURNS#  OUT AS SICK AS MINE.";
                message[2] = "* GOODBYE, HUMAN.";
                prt[0] = 473;
                prt[1] = 473;
                prt[2] = 473;
            }
            
            break;
    }
    
    scene = 0;
}
