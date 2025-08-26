var actor_starlo = 1169;
var actor_ed = 1162;
var actor_mooch = 1165;
var actor_moray = 1167;
var actor_ace = 1158;
var actor_clover = obj_player_npc;
var actor_ceroba;

if (instance_exists(obj_ceroba_npc))
    actor_ceroba = obj_ceroba_npc;

switch (scene)
{
    case 0:
        cutscene_music_start(184, 0);
        break;
    
    case 1:
        if (cutscene_wait(1.5))
            cutscene_advance(6);
        
        break;
    
    case 2:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, 270, 3, "y", "down", "nothing", 640, 270, 720, 375);
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_fade_in(actor_clover, 2);
        break;
    
    case 5:
        cutscene_npc_walk(actor_clover, actor_clover.x, 270, 3, "y", "down", "nothing", 640, 270, 700, 375);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Final call!";
            message[1] = "* Get on over here!";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_normal;
            talker[0] = actor_starlo;
            sndfnt = snd_talk_starlo;
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(actor_ed, 680, 440, 3, "x", "up");
        cutscene_npc_walk(actor_ace, 760, 440, 3, "y", "up");
        cutscene_npc_walk(actor_moray, 640, 375, 3, "y", "right");
        cutscene_npc_walk(actor_mooch, 800, 375, 3, "x", "left");
        cutscene_advance();
        break;
    
    case 8:
        if (actor_moray.npc_arrived && actor_ed.npc_arrived && actor_mooch.npc_arrived && actor_ace.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Are y'all ready?";
            sndfnt_array[0] = snd_talk_starlo;
            talker[0] = actor_starlo;
            message[1] = "* Actually, there's#  something we wanted to#  talk about.";
            sndfnt_array[1] = snd_talk_default;
            talker[1] = actor_moray;
            message[2] = "* Yea. 'Bout the general#  work environment.";
            sndfnt_array[2] = snd_talk_ed;
            talker[2] = actor_ed;
            message[3] = "* Maybe later. Let's keep#  movin'!";
            sndfnt_array[3] = snd_talk_starlo;
            talker[3] = actor_starlo;
            message[4] = "* ...";
            sndfnt_array[4] = snd_talk_default;
            talker[4] = actor_moray;
            message[5] = "* So Clover! I actually#  tricked ya.";
            message[6] = "* There is no fourth#  mission!";
            message[7] = "* Well, there used to be#  but we cut it out of#  the regiment.";
            message[8] = "* Anyway! YOU PASSED#  EVERYTHIN'!!";
            message[9] = "* You are now the proud#  deputy of this fine#  town!";
            sndfnt_array[5] = snd_talk_starlo;
            talker[5] = actor_starlo;
            message[10] = "* Wait! Deputy???";
            message[11] = "* I thought this was for#  a normal spot on the#  team!";
            sndfnt_array[10] = snd_talk_mooch;
            talker[10] = actor_mooch;
            message[12] = "* Clover is too special#  and skilled for a#  normal spot!";
            sndfnt_array[12] = snd_talk_starlo;
            talker[12] = actor_starlo;
            message[13] = "* Star, this is hardly#  fair.";
            sndfnt_array[13] = snd_talk_ace;
            talker[13] = actor_ace;
            message[14] = "* Life ain't always fair#  in the Wild East, bucko!";
            message[15] = "* They passed their#  trainin' like anyone#  else.";
            sndfnt_array[14] = snd_talk_starlo;
            talker[14] = actor_starlo;
            message[16] = "* That was trainin'?";
            message[17] = "* We barely did anything!";
            message[18] = "* That last mission#  especially was awful!";
            sndfnt_array[16] = snd_talk_ed;
            talker[16] = actor_ed;
            message[19] = "* Calm down, will ya?";
            message[20] = "* Ye're killin' my good#  mood!";
            message[21] = "* I have to run to the#  Mines to get Clover's#  badge made.";
            message[22] = "* I was too busy with#  everythin' that it#  slipped my mind.";
            message[23] = "* You five have fun!";
            message[24] = "* I'll be riiiight back!";
            sndfnt_array[19] = snd_talk_starlo;
            talker[19] = actor_starlo;
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_moray_plain;
            prt[2] = spr_portrait_ed_normal;
            prt[3] = spr_portrait_starlo_distracted;
            prt[4] = spr_portrait_moray_shaded;
            prt[5] = spr_portrait_starlo_normal;
            prt[6] = spr_portrait_starlo_smile;
            prt[7] = spr_portrait_starlo_serious;
            prt[8] = spr_portrait_starlo_smile;
            prt[9] = spr_portrait_starlo_normal;
            prt[10] = spr_portrait_mooch_surprised;
            prt[11] = spr_portrait_mooch_nervous;
            prt[12] = spr_portrait_starlo_plain;
            prt[13] = spr_portrait_ace_stern;
            prt[14] = spr_portrait_starlo_serious;
            prt[15] = spr_portrait_starlo_point;
            prt[16] = spr_portrait_ed_normal;
            prt[17] = spr_portrait_ed_mad;
            prt[18] = spr_portrait_ed_mad;
            prt[19] = spr_portrait_starlo_angry;
            prt[20] = spr_portrait_starlo_embarassed;
            prt[21] = spr_portrait_starlo_serious;
            prt[22] = spr_portrait_starlo_plain;
            prt[23] = spr_portrait_starlo_normal;
            prt[24] = spr_portrait_starlo_normal;
        }
        
        break;
    
    case 10:
        scr_audio_fade_out(cutscene_music, 500);
        cutscene_camera_freeze();
        break;
    
    case 11:
        cutscene_wait(1);
        break;
    
    case 12:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, 600, 3, "y", "down");
        break;
    
    case 13:
        cutscene_wait(1);
        break;
    
    case 14:
        cutscene_npc_walk(actor_ed, 690, 420, 3, "x", "up");
        cutscene_npc_walk(actor_ace, 730, 420, 3, "y", "up");
        cutscene_npc_walk(actor_moray, 660, 375, 3, "y", "right");
        cutscene_npc_walk(actor_mooch, 750, 375, 3, "x", "left");
        cutscene_advance();
        break;
    
    case 15:
        if (actor_moray.npc_arrived && actor_ed.npc_arrived && actor_mooch.npc_arrived && actor_ace.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* This is just peachy.#  You gettin' this#  attention n' all.";
            message[1] = "* How come you waltz in#  here and Star instantly#  makes ya deputy?";
            prt[0] = spr_portrait_ed_mutter;
            prt[1] = spr_portrait_ed_mad;
            sndfnt_array[0] = snd_talk_ed;
            talker[0] = actor_ed;
            message[2] = "* We didn't get this kind#  of treatment.";
            message[3] = "* We had to go through#  weeks of lasso lessons.#  Lassons for short.";
            prt[2] = spr_portrait_ace_stern;
            prt[3] = spr_portrait_ace_stern;
            sndfnt_array[2] = snd_talk_ace;
            talker[2] = actor_ace;
            message[4] = "* For me to become part#  of the team...";
            message[5] = "* Star made me walk#  around with a snake in#  my boot for a week!";
            message[6] = "* ...It was rubber but#  the rashes it gave me#  were unbearable!";
            prt[4] = spr_portrait_moray_downer;
            prt[5] = spr_portrait_moray_shaded;
            prt[6] = spr_portrait_moray_downer;
            sndfnt_array[4] = snd_talk_default;
            talker[4] = actor_moray;
            message[7] = "* Yeah and he made me#  pickpocket monsters by#  the Oasis!";
            prt[7] = spr_portrait_mooch_normal;
            sndfnt_array[7] = snd_talk_mooch;
            talker[7] = actor_mooch;
        }
        
        break;
    
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Star didn't make you do#  that.";
            prt[0] = spr_portrait_moray_disbelief;
            sndfnt_array[0] = snd_talk_default;
            talker[0] = actor_moray;
            message[1] = "* :)";
            prt[1] = spr_portrait_mooch_smug;
            sndfnt_array[1] = snd_talk_mooch;
            talker[1] = actor_mooch;
            message[2] = "* Ya know what? This#  ain't fair to any of us.";
            message[3] = "* Clover needs a#  challenge.";
            message[4] = "* We need to see if#  they're truly worthy of#  joining our squad!";
            prt[2] = spr_portrait_ed_mad;
            prt[3] = spr_portrait_ed_mad;
            prt[4] = spr_portrait_ed_normal;
            sndfnt_array[2] = snd_talk_ed;
            talker[2] = actor_ed;
            message[5] = "* Finally, some REAL#  excitement!";
            prt[5] = spr_portrait_mooch_smirk;
            sndfnt_array[5] = snd_talk_mooch;
            talker[5] = actor_mooch;
            message[6] = "* Feisty Four! Here we#  come!";
            prt[6] = spr_portrait_moray_plain;
            sndfnt_array[6] = snd_talk_default;
            talker[6] = actor_moray;
        }
        
        break;
    
    case 19:
        cutscene_battle_initiate("feisty five", false, false);
        break;
    
    case 20:
        global.dunes_flag[22] = 1;
        instance_destroy();
        break;
    
    case 21:
        with (obj_radio)
            audio_stop_sound(current_song);
        
        cutscene_camera_freeze(720, 400);
        break;
    
    case 22:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, 480, 4, "y", "up");
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* What in the actual#  goshdarn tarnation is#  happenin' here?";
            prt[0] = spr_portrait_starlo_angry;
            sndfnt_array[0] = snd_talk_starlo;
            talker[0] = actor_starlo;
            position = 1;
        }
        
        break;
    
    case 24:
        cutscene_npc_walk(actor_ed, 680, 420, 2, "y", "down");
        cutscene_npc_walk(actor_ace, 740, 420, 2, "y", "down");
        cutscene_npc_walk(actor_moray, 620, 420, 2, "x", "down");
        cutscene_npc_walk(actor_mooch, 780, 420, 2, "x", "down");
        cutscene_advance(25);
        break;
    
    case 25:
        if (cutscene_wait(2))
        {
            cutscene_music_start(197);
            cutscene_advance(26);
        }
        
        break;
    
    case 26:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(255, 206, 106);
            message[0] = "* We felt yer trainin'#  was lackluster...";
            message[1] = "* ...So we gave Clover#  a real challenge.";
            sndfnt_array[0] = snd_talk_ed;
            talker[0] = actor_ed;
            message[2] = "* I'm disappointed in you#  four!";
            message[3] = "* Eight weeks of lassons#  for this?";
            message[4] = "* I oughta lock you away#  with Feathers!";
            sndfnt_array[2] = snd_talk_starlo;
            talker[2] = actor_starlo;
            message[5] = "* Star, what's going on?";
            message[6] = "* You've been... different.";
            sndfnt_array[5] = snd_talk_default;
            talker[5] = actor_moray;
            message[7] = "* A real meanie!";
            sndfnt_array[7] = snd_talk_mooch;
            talker[7] = actor_mooch;
            message[8] = "* It's true. This hasn't#  been any fun.";
            sndfnt_array[8] = snd_talk_ace;
            talker[8] = actor_ace;
            message[9] = "* W-what are y'all#  blabbering about?";
            message[10] = "* This is the most alive#  this town has ever been!";
            sndfnt_array[9] = snd_talk_starlo;
            talker[9] = actor_starlo;
            message[11] = "* Why's everythin' hav'ta#  be a spectacle, huh?";
            message[12] = "* I miss the old North#  Star; the fearless#  leader!";
            message[13] = "* The monster who could#  make their own fun in#  the little things!";
            message[14] = "* This new Star is#  selfish and reckless.";
            message[15] = "* Or should I call you by#  yer real name?";
            message[16] = "* Should I? Starlo?";
            message_col[16][0] = "            Starlo ";
            sndfnt_array[11] = snd_talk_ed;
            talker[11] = actor_ed;
            message[17] = "* Why you...";
            sndfnt_array[17] = snd_talk_starlo;
            talker[17] = actor_starlo;
            position = 1;
            prt[0] = spr_portrait_ed_mad;
            prt[1] = spr_portrait_ed_mad;
            prt[2] = spr_portrait_starlo_embarassed;
            prt[3] = spr_portrait_starlo_embarassed;
            prt[4] = spr_portrait_starlo_serious;
            prt[5] = spr_portrait_moray_downer;
            prt[6] = spr_portrait_moray_downer;
            prt[7] = spr_portrait_mooch_nervous;
            prt[8] = spr_portrait_ace_hand;
            prt[9] = spr_portrait_starlo_disappointed;
            prt[10] = spr_portrait_starlo_disappointed;
            prt[11] = spr_portrait_ed_mad;
            prt[12] = spr_portrait_ed_normal;
            prt[13] = spr_portrait_ed_mutter;
            prt[14] = spr_portrait_ed_mad;
            prt[15] = spr_portrait_ed_mad;
            prt[16] = spr_portrait_ed_mad;
            prt[17] = spr_portrait_starlo_angry;
        }
        
        break;
    
    case 27:
        instance_create(640, 270, obj_ceroba_npc);
        cutscene_advance();
        break;
    
    case 28:
        cutscene_npc_walk(actor_ceroba, 640, 350, 3, "y", "down");
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* What's with all the#  shouting?";
            message[1] = "* What's happening?";
            sndfnt_array[0] = snd_talk_ceroba;
            position_array[0] = 0;
            position_array[1] = 0;
            talker[0] = actor_ceroba;
            message[2] = "* It seems my posse don't#  RESPECT me no more!";
            sndfnt_array[2] = snd_talk_starlo;
            position_array[2] = 1;
            talker[2] = actor_starlo;
            message[3] = "* It's not that.";
            message[4] = "* We just want you to#  take it down a notch.";
            position_array[3] = 0;
            position_array[4] = 0;
            sndfnt_array[3] = snd_talk_ace;
            talker[3] = actor_ace;
            message[5] = "* You can't just throw us#  around for this human#  business.";
            message[6] = "* That isn't what friends#  do, Star.";
            position_array[5] = 0;
            position_array[6] = 0;
            sndfnt_array[5] = snd_talk_default;
            talker[5] = actor_moray;
            message[7] = "* ...";
            sndfnt_array[7] = snd_talk_ceroba;
            position_array[7] = 0;
            talker[7] = actor_ceroba;
            message[8] = "* I know what all this is#  about...";
            message[9] = "* Y'all are just FULL of#  envy! Overflowin' with#  it!\t";
            message[10] = "* Clover's shot circles#  'round you and you just#  can't accept it!";
            sndfnt_array[8] = snd_talk_starlo;
            position_array[8] = 1;
            position_array[9] = 1;
            position_array[10] = 1;
            talker[8] = actor_starlo;
            message[11] = "* Clover has nothing to#  do with this...#  It's you.";
            position_array[11] = 0;
            sndfnt_array[11] = snd_talk_moray;
            talker[11] = actor_moray;
            message[12] = "* No, Star's totally#  right!";
            message[13] = "* Clover's \"super#  skilled\" at everythin'!";
            message[14] = "* In fact, I think they#  could carry the whole#  squad on their own!";
            message[15] = "* Who needs us when you#  got a powerhouse#  \"deputy\"?";
            position_array[12] = 0;
            position_array[13] = 0;
            position_array[14] = 0;
            position_array[15] = 0;
            sndfnt_array[12] = snd_talk_ed;
            talker[12] = actor_ed;
            message[16] = "* What'r you sayin'?";
            position_array[16] = 1;
            sndfnt_array[16] = snd_talk_starlo;
            talker[16] = actor_starlo;
            message[17] = "* I'm sayin' that I'm#  done.";
            message[18] = "* I resign from the#  Feisty Five, okay?";
            position_array[17] = 1;
            position_array[18] = 1;
            sndfnt_array[17] = snd_talk_ed;
            talker[17] = actor_ed;
            message[19] = "* Really now?";
            message[20] = "* It'll still be the#  Feisty Five without ya#  so go ahead.";
            position_array[19] = 1;
            position_array[20] = 1;
            sndfnt_array[19] = snd_talk_starlo;
            talker[19] = actor_starlo;
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_starlo_embarassed;
            prt[3] = spr_portrait_ace_concealed;
            prt[4] = spr_portrait_ace_stern;
            prt[5] = spr_portrait_moray_shaded;
            prt[6] = spr_portrait_moray_downer;
            prt[7] = spr_portrait_ceroba_disapproving;
            prt[8] = spr_portrait_starlo_hurt;
            prt[9] = spr_portrait_starlo_angry;
            prt[10] = spr_portrait_starlo_angry;
            prt[11] = spr_portrait_moray_shaded;
            prt[12] = spr_portrait_ed_normal;
            prt[13] = spr_portrait_ed_normal;
            prt[14] = spr_portrait_ed_mutter;
            prt[15] = spr_portrait_ed_mad;
            prt[16] = spr_portrait_starlo_plain;
            prt[17] = spr_portrait_ed_mad;
            prt[18] = spr_portrait_ed_mad;
            prt[19] = spr_portrait_starlo_hurt;
            prt[20] = spr_portrait_starlo_hurt;
        }
        
        break;
    
    case 30:
        cutscene_npc_walk(actor_ed, actor_ed.x, 620, 3, "x", "down");
        break;
    
    case 31:
        cutscene_wait(0.5);
        break;
    
    case 32:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* I-I'm leaving too.";
            message[1] = "* I don't wanna work#  under a big-headed#  sheriff.";
            prt[0] = spr_portrait_mooch_nervous;
            prt[1] = spr_portrait_mooch_nervous;
            sndfnt_array[0] = snd_talk_mooch;
            talker[0] = actor_mooch;
            position = 1;
        }
        
        break;
    
    case 33:
        cutscene_npc_walk(actor_mooch, actor_mooch.x, 620, 4, "y", "down");
        break;
    
    case 34:
        cutscene_wait(0.5);
        break;
    
    case 35:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Seems like life dealt#  you a bad hand, Star.";
            message[1] = "* I'm following them.";
            prt[0] = spr_portrait_ace_hand;
            prt[1] = spr_portrait_ace_concealed;
            sndfnt_array[0] = snd_talk_ace;
            talker[0] = actor_ace;
            position = 1;
        }
        
        break;
    
    case 36:
        cutscene_npc_walk(actor_ace, actor_ace.x, 620, 3, "y", "down");
        break;
    
    case 37:
        cutscene_wait(0.5);
        break;
    
    case 38:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Sorry, Star...";
            message[1] = "* Please work on yourself.";
            message[2] = "* Forgiveness is only one#  apology away.";
            prt[0] = spr_portrait_moray_downer;
            prt[1] = spr_portrait_moray_downer;
            prt[2] = spr_portrait_moray_downer;
            sndfnt_array[0] = snd_talk_default;
            talker[0] = actor_moray;
            position = 1;
        }
        
        break;
    
    case 39:
        cutscene_npc_walk(actor_moray, actor_moray.x, 620, 3, "y", "down");
        break;
    
    case 40:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 41:
        cutscene_wait(0.5);
        break;
    
    case 42:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, 440, 3, "y", "down");
        break;
    
    case 43:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Fine! I was considerin'#  firin' y'all anyway!";
            message[1] = "* Ceroba, you understand,#  right?";
            message[2] = "* They're bein'#  ridiculous!";
            prt[0] = spr_portrait_starlo_angry;
            prt[1] = spr_portrait_starlo_hurt;
            prt[2] = spr_portrait_starlo_hurt;
            sndfnt_array[0] = snd_talk_starlo;
            talker[0] = actor_starlo;
            position = 1;
            
            if (message_current == 1)
                actor_starlo.npc_direction = "up";
        }
        
        break;
    
    case 44:
        cutscene_npc_walk(actor_ceroba, 660, 400, 1, "y", "down");
        break;
    
    case 45:
        cutscene_wait(0.5);
        break;
    
    case 46:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Starlo...";
            message[1] = "* They're right.";
            message[2] = "* You HAVE changed a lot#  from the monster I once#  knew.";
            message[3] = "* I tried to brush it off#  as you having fun at#  first but...";
            message[4] = "* This Wild East thing#  has damaged your#  personality.";
            message[5] = "* I want to see the real#  Starlo.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_disapproving;
            prt[4] = spr_portrait_ceroba_disapproving;
            prt[5] = spr_portrait_ceroba_neutral;
            sndfnt_array[0] = snd_talk_ceroba;
            position_array[0] = 0;
            talker[0] = actor_ceroba;
            message[6] = "* ...";
            message[7] = "* That's North Star to#  you.";
            prt[6] = spr_portrait_starlo_hurt;
            prt[7] = spr_portrait_starlo_hurt;
            sndfnt_array[6] = snd_talk_starlo;
            position_array[6] = 0;
            talker[6] = actor_starlo;
            message[8] = "* ...";
            prt[8] = spr_portrait_ceroba_disapproving;
            sndfnt_array[8] = snd_talk_ceroba;
            position_array[8] = 0;
            talker[8] = actor_ceroba;
        }
        
        break;
    
    case 47:
        scr_audio_fade_out(cutscene_music, 1000);
        cutscene_npc_walk(actor_ceroba, actor_ceroba.x, 620, 2, "x", "down");
        break;
    
    case 48:
        cutscene_wait(2);
        break;
    
    case 49:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 50:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Well...";
            message[1] = "* Everyone is gone.";
            message[2] = "* I got no posse... No#  friends...";
            message[3] = "* I...";
            message[4] = "* I need to think.";
            message[5] = "* I can fix this.";
            prt[0] = spr_portrait_starlo_embarassed;
            prt[1] = spr_portrait_starlo_hurt;
            prt[2] = spr_portrait_starlo_hurt;
            prt[3] = spr_portrait_starlo_hurt;
            prt[4] = spr_portrait_starlo_embarassed;
            prt[5] = spr_portrait_starlo_embarassed;
            sndfnt_array[0] = snd_talk_starlo;
            talker[0] = actor_starlo;
            position = 1;
        }
        
        break;
    
    case 51:
        cutscene_npc_walk(actor_starlo, 1020, actor_starlo.y, 4, "x", "right");
        break;
    
    case 52:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 53:
        cutscene_wait(1);
        break;
    
    case 54:
        global.dunes_flag[20] = 9;
        instance_destroy(actor_starlo);
        instance_destroy(actor_ed);
        instance_destroy(actor_ace);
        instance_destroy(actor_moray);
        instance_destroy(actor_mooch);
        instance_destroy(actor_ceroba);
        instance_destroy(actor_clover);
        instance_destroy();
        instance_create(720, 380, obj_determination);
        __view_set(e__VW.Object, 0, obj_pl);
        obj_radio.bgm = 542;
        scr_radio_restart();
        scr_cutscene_end();
        break;
}
