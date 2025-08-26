if (live_call())
    return global.live_result;

var text_var = 0;

if (global.player_level >= 3)
    text_var = 1;

if (global.player_level >= 6)
    text_var = 2;

if (global.dunes_flag[16] >= 2)
    text_var = 3;

var abandoned_geno = false;

if (global.geno_complete[3] == true && global.route != 3)
    abandoned_geno = true;

switch (scene)
{
    case 0:
        if (obj_pl.x < 400)
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_pl.y, 3, "x", "up");
        break;
    
    case 2:
        if (cutscene_wait(1.5))
            cutscene_advance(2.5);
        
        break;
    
    case 2.5:
        if (cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_martlet_npc.y + 60, 1, "x", "up"))
            cutscene_advance(3);
        
        break;
    
    case 3:
        cutscene_camera_move(obj_martlet_npc.x, 300, 1);
        camera_set_view_speed(view_camera[0], -1, -1);
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_instance_create(obj_martlet_npc.x, obj_martlet_npc.y - 45, obj_cutscene_ex);
        audio_play_sound(snd_encounter, 1, 0);
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_direction(obj_martlet_npc, "down");
        instance_destroy(obj_cutscene_ex);
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            position = 0;
            
            switch (text_var)
            {
                case 0:
                    message[0] = "* Ah, you got my message!#  Great!";
                    prt[0] = spr_martlet_head_regular;
                    break;
                
                case 1:
                case 2:
                    message[0] = "* Ah, you got my message.";
                    prt[0] = spr_martlet_head_moderate;
                    break;
                
                case 3:
                    message[0] = "* So you found me...";
                    prt[0] = spr_martlet_head_downer;
                    break;
            }
        }
        
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        if (text_var == 3)
            cutscene_advance(12);
        else
            cutscene_npc_direction(obj_martlet_npc, "up");
        
        break;
    
    case 12:
        cutscene_camera_move(obj_martlet_npc.x, 260, 1);
        camera_set_view_speed(view_camera[0], -1, -1);
        break;
    
    case 13:
        if (text_var == 3)
            cutscene_wait(1);
        else
            cutscene_wait(0.5);
        
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_aqua;
            talker[0] = obj_martlet_npc;
            
            switch (text_var)
            {
                case 0:
                    message[0] = "* What a view...";
                    message[1] = "* That large facility in#  front of us is the#  CORE...";
                    message[2] = "* ...The main source of#  power for the#  Underground.";
                    message[3] = "* Behind that is New Home.#  The capital city.";
                    message_col[3][0] = "                 New Home                     ";
                    message[4] = "* ...King ASGORE's Castle.";
                    prt[0] = spr_martlet_head_regular;
                    prt[1] = spr_martlet_head_moderate;
                    prt[2] = spr_martlet_head_moderate;
                    prt[3] = spr_martlet_head_wondering;
                    prt[4] = spr_martlet_head_sad;
                    break;
                
                case 1:
                case 2:
                    message[0] = "* ...";
                    message[1] = "* That large facility in#  front of us is the#  CORE...";
                    message[2] = "* ...The main source of#  power for the#  Underground.";
                    message[3] = "* Behind that is New Home.#  The capital city.";
                    message_col[3][0] = "                 New Home                     ";
                    message[4] = "* ...King ASGORE's#  Castle.";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_moderate;
                    prt[2] = spr_martlet_head_wondering;
                    prt[3] = spr_martlet_head_moderate;
                    prt[4] = spr_martlet_head_downer;
                    break;
                
                case 3:
                    message[0] = "* ...";
                    message[1] = "* My whole life...";
                    message[2] = "* My whole life I was#  taught that humans are#  the enemy.";
                    message[3] = "* And... it looks like#  they were right.";
                    message[4] = "* But even with that#  prejudice drilled into#  my mind...";
                    message[5] = "* I think I... I sense#  better in you.";
                    prt[0] = spr_martlet_head_disappointed;
                    prt[1] = spr_martlet_head_disappointed;
                    prt[2] = spr_martlet_head_unamused;
                    prt[3] = spr_martlet_head_unamused;
                    prt[4] = spr_martlet_head_downer;
                    prt[5] = spr_martlet_head_sad;
                    break;
            }
        }
        
        break;
    
    case 15:
        if (text_var == 3)
            cutscene_advance(19);
        else
            cutscene_wait(0.5);
        
        break;
    
    case 16:
        cutscene_npc_direction(obj_martlet_npc, "down");
        break;
    
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            
            switch (text_var)
            {
                case 0:
                    message[0] = "* Look, I haven't been#  100% honest with you...";
                    message[1] = "* My whole life, I was#  taught that humans are#  the enemy.";
                    message[2] = "* But you... you never#  really came across as#  such. ";
                    message[3] = "* Though...";
                    message[4] = "* During our journey, I#  did sense a faint,#  alarming aura in you.";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_sad;
                    prt[2] = spr_martlet_head_melancholic;
                    prt[3] = spr_martlet_head_sad;
                    prt[4] = spr_martlet_head_downer;
                    break;
                
                case 1:
                    message[0] = "* Look, I haven't been#  100% honest with you...";
                    message[1] = "* My whole life, I was#  taught that humans are#  the enemy.";
                    message[2] = "* And I'll admit, you're#  not shy about defending#  yourself.";
                    message[3] = "* During our journey, I#  sensed an alarming aura#  in you.";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_sad;
                    prt[2] = spr_martlet_head_wondering;
                    prt[3] = spr_martlet_head_moderate;
                    break;
                
                case 2:
                    message[0] = "* Look, I haven't been#  100% honest with you...";
                    message[1] = "* My whole life, I was#  taught that humans are#  the enemy.";
                    message[2] = "* And... maybe they were#  right.";
                    message[3] = "* I've been trying my#  best to act nice but...";
                    message[4] = "* ...for a while now I've#  sensed an alarming aura#  in you.";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_moderate;
                    prt[2] = spr_martlet_head_wondering;
                    prt[3] = spr_martlet_head_wondering;
                    prt[4] = spr_martlet_head_downer;
                    break;
            }
        }
        
        break;
    
    case 19:
        cutscene_wait(0.5);
        break;
    
    case 20:
        cutscene_npc_action_sprite(obj_martlet_npc, spr_martlet_roof_syringe, 1, true, 0);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            
            switch (text_var)
            {
                case 0:
                    message[0] = "* I had this backup plan#  in case you started a#  rampage but...";
                    message[1] = "* ...you never did.";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_sad;
                    break;
                
                case 1:
                    message[0] = "* I had this backup plan#  in case you started a#  rampage but...";
                    message[1] = "* ...thankfully, you#  never did.";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_sad;
                    break;
                
                case 2:
                    message[0] = "* I had this plan to stop#  your violence if needed.#  ";
                    message[1] = "* I'm...";
                    message[2] = "* ...I'm not sure if I#  should...";
                    message[3] = "* ...";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_wondering;
                    prt[2] = spr_martlet_head_sad;
                    prt[3] = spr_martlet_head_downer;
                    break;
                
                case 3:
                    message[0] = "* I had this plan to stop#  your rampage but...";
                    message[1] = "* ...I'm not sure if I#  should...";
                    message[2] = "* ...";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_wondering;
                    prt[2] = spr_martlet_head_sad;
                    break;
            }
        }
        
        break;
    
    case 22:
        syringe_noloop = false;
        
        if (text_var == 2)
            cutscene_wait(1);
        else
            cutscene_wait(0.25);
        
        break;
    
    case 23:
        if (cutscene_npc_action_sprite(obj_martlet_npc, spr_martlet_roof_syringe_throw, 1, true, 0))
        {
            obj_martlet_npc.action_sprite = false;
            
            if (text_var != 3)
                cutscene_music_start(296);
            
            cutscene_advance(24);
        }
        
        if (syringe_noloop == false && obj_martlet_npc.image_index >= 8)
        {
            syringe_noloop = true;
            instance_create_depth(obj_martlet_npc.x - 12, obj_martlet_npc.y - 22, 150, obj_hotland_roof_syringe);
        }
        
        break;
    
    case 24:
        cutscene_wait(0.5);
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            
            switch (text_var)
            {
                case 0:
                    message[0] = "* Phew... that feels#  liberating.";
                    message[1] = "* I'm so sorry for keeping#  that from you. You're a#  good kid.";
                    message[2] = "* Even so, there's another#  problem...";
                    message[3] = "* I don't think ASGORE#  would agree.";
                    message[4] = "* You see, he needs seven#  human SOULs to destroy#  the barrier.";
                    message[5] = "* So far he's collected#  five and he might try#  for another...";
                    message[6] = "* Now that we're this#  close...";
                    message[7] = "* I'm afraid there isn't a#  peaceful way of#  confronting him.";
                    message[8] = "* I'm sorry.";
                    prt[0] = spr_martlet_head_melancholic;
                    prt[1] = spr_martlet_head_melancholic;
                    prt[2] = spr_martlet_head_disappointed;
                    prt[3] = spr_martlet_head_downer;
                    prt[4] = spr_martlet_head_wondering;
                    prt[5] = spr_martlet_head_moderate;
                    prt[6] = spr_martlet_head_nervous;
                    prt[7] = spr_martlet_head_disappointed;
                    prt[8] = spr_martlet_head_disappointed;
                    
                    if (message_current == 7)
                        obj_martlet_npc.npc_direction = "up";
                    
                    break;
                
                case 1:
                    message[0] = "* Phew... that feels#  liberating.";
                    message[1] = "* I'm sorry for keeping#  that from you but you#  know how things are...";
                    message[2] = "* Even so, there's#  another problem...";
                    message[3] = "* ASGORE needs seven#  human SOULs to destroy#  the barrier.";
                    message[4] = "* So far he's collected#  five and I fear he'd try#  for another...";
                    message[5] = "* You might fight back#  and well...";
                    prt[0] = spr_martlet_head_melancholic;
                    prt[1] = spr_martlet_head_downer;
                    prt[2] = spr_martlet_head_wondering;
                    prt[3] = spr_martlet_head_wondering;
                    prt[4] = spr_martlet_head_moderate;
                    prt[5] = spr_martlet_head_sad;
                    break;
                
                case 2:
                    message[0] = "* I just... can't do it.";
                    message[1] = "* You're a good kid deep#  down, I'm sure of it...";
                    message[2] = "* But truthfully, I can't#  allow you to visit#  ASGORE.";
                    message[3] = "* He only needs seven#  human SOULs to destroy#  the barrier.";
                    message[4] = "* So far he's collected#  five and I know he'd try#  for another.";
                    message[5] = "* You would fight back#  and well...";
                    prt[0] = spr_martlet_head_downer;
                    prt[1] = spr_martlet_head_downer;
                    prt[2] = spr_martlet_head_wondering;
                    prt[3] = spr_martlet_head_wondering;
                    prt[4] = spr_martlet_head_moderate;
                    prt[5] = spr_martlet_head_moderate;
                    break;
                
                case 3:
                    message[0] = "* I just... can't do it.";
                    message[1] = "* Gosh, I must be crazy!";
                    message[2] = "* ...";
                    message[3] = "* If you're going to#  shoot me, do it now.";
                    message[4] = "* You'll never get past#  ASGORE.";
                    message[5] = "* He's our only guiding#  light and not one to be#  snuffed out.";
                    message[6] = "* So go ahead... Mark#  your tally.";
                    message[7] = "* ...";
                    prt[0] = spr_martlet_head_sad;
                    prt[1] = spr_martlet_head_wondering;
                    prt[2] = spr_martlet_head_sad;
                    prt[3] = spr_martlet_head_moderate;
                    prt[4] = spr_martlet_head_moderate;
                    prt[5] = spr_martlet_head_moderate;
                    prt[6] = spr_martlet_head_moderate;
                    prt[7] = spr_martlet_head_moderate;
                    break;
            }
        }
        
        break;
    
    case 26:
        cutscene_wait(1);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            
            switch (text_var)
            {
                case 0:
                    message[0] = "* ...";
                    message[1] = "* I know this isn't the#  path you intended but...";
                    message[2] = "* Let's... put all this#  behind us.";
                    message[3] = "* You can come stay with#  me. Live out a happy,#  violence-free childhood!";
                    message[4] = "* I'll teach you#  craftsmanship...";
                    message[5] = "* And you can teach me#  marksmanship!";
                    message[6] = "* You don't deserve to die#  this young.";
                    message[7] = "* ...";
                    message[8] = "* What do you say?";
                    prt[0] = spr_martlet_head_sad;
                    prt[1] = spr_martlet_head_downer;
                    prt[2] = spr_martlet_head_downer;
                    prt[3] = spr_martlet_head_melancholic;
                    prt[4] = spr_martlet_head_content;
                    prt[5] = spr_martlet_head_content;
                    prt[6] = spr_martlet_head_melancholic;
                    prt[7] = spr_martlet_head_sad;
                    prt[8] = spr_martlet_head_melancholic;
                    ch_msg = 8;
                    ch[1] = "Sounds good";
                    ch[2] = "...Okay";
                    message[9] = "* Really???";
                    message[10] = "* Wow! We are going to#  have so much fun!";
                    message[11] = "* I promise this is the#  best outcome for both of#  us.";
                    message[12] = "* Well, \"roommate,\" let's#  go to Snowdin!";
                    prt[9] = spr_martlet_head_shocked;
                    prt[10] = spr_martlet_head_content;
                    prt[11] = spr_martlet_head_happy;
                    prt[12] = spr_martlet_head_content;
                    
                    if (message_current == 1)
                        obj_martlet_npc.npc_direction = "down";
                    
                    if (message_current >= 7)
                        scr_audio_fade_out(mus_acquittal, 1000);
                    
                    break;
                
                case 1:
                    message[0] = "* ...";
                    message[1] = "* I know this isn't the#  path you intended but...";
                    message[2] = "* Let's... put all this#  behind us. End the#  conflict.";
                    message[3] = "* You can come stay with#  me. Live out a happy,#  violence-free childhood.";
                    message[4] = "* You don't deserve to#  die this young.";
                    message[5] = "* ...";
                    message[6] = "* What do you say?";
                    prt[0] = spr_martlet_head_wondering;
                    prt[1] = spr_martlet_head_moderate;
                    prt[2] = spr_martlet_head_melancholic;
                    prt[3] = spr_martlet_head_melancholic;
                    prt[4] = spr_martlet_head_sad;
                    prt[5] = spr_martlet_head_downer;
                    prt[6] = spr_martlet_head_melancholic;
                    ch_msg = 6;
                    ch[1] = "Wouldn't\nhurt";
                    ch[2] = "...Okay";
                    message[7] = "* Thanks a bunch, Clover!";
                    message[8] = "* ...";
                    message[9] = "* Hey, smile a little!#  This is a new beginning!";
                    message[10] = "* C'mon, \"roommate\",#  let's go to Snowdin!";
                    prt[7] = spr_martlet_head_melancholic;
                    prt[8] = spr_martlet_head_melancholic;
                    prt[9] = spr_martlet_head_content;
                    prt[10] = spr_martlet_head_regular;
                    
                    if (message_current == 1)
                        obj_martlet_npc.npc_direction = "down";
                    
                    if (message_current >= 5)
                        scr_audio_fade_out(mus_acquittal, 1000);
                    
                    break;
                
                case 2:
                    message[0] = "* ...";
                    message[1] = "* I'm not certain this is#  the right decision#  but...";
                    message[2] = "* Let's... put all this#  behind us. End the#  conflict.";
                    message[3] = "* You can come stay with#  me. Live out a happy,#  violence-free childhood.";
                    message[4] = "* You've gone through so#  much. More than any#  child should.";
                    message[5] = "* I believe you can#  change for the better.";
                    message[6] = "* ...";
                    message[7] = "* What do you say?";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_wondering;
                    prt[2] = spr_martlet_head_melancholic;
                    prt[3] = spr_martlet_head_melancholic;
                    prt[4] = spr_martlet_head_downer;
                    prt[5] = spr_martlet_head_melancholic;
                    prt[6] = spr_martlet_head_sad;
                    prt[7] = spr_martlet_head_melancholic;
                    ch_msg = 7;
                    ch[1] = "...";
                    ch[2] = "...Okay";
                    
                    if (outcome == 1)
                    {
                        message[8] = "* I understand if you're#  hesitant but please...#  trust me...";
                        prt[8] = spr_martlet_head_melancholic;
                    }
                    
                    if (outcome == 2)
                    {
                        message[8] = "* Thank you, Clover.";
                        prt[8] = spr_martlet_head_melancholic;
                    }
                    
                    message[9] = "* This is the best#  outcome for everyone.";
                    message[10] = "* ...";
                    message[11] = "* Well, \"roommate\", let's#  go to Snowdin.";
                    prt[9] = spr_martlet_head_melancholic;
                    prt[10] = spr_martlet_head_wondering;
                    prt[11] = spr_martlet_head_regular;
                    
                    if (message_current == 1)
                        obj_martlet_npc.npc_direction = "down";
                    
                    if (message_current >= 6)
                        scr_audio_fade_out(mus_acquittal, 1000);
                    
                    break;
                
                case 3:
                    message[0] = "* ...";
                    message[1] = "* You're... not attacking#  me...?";
                    message[2] = "* Okay...";
                    message[3] = "* ...";
                    message[4] = "* I'm not certain this is#  the right decision#  but...";
                    message[5] = "* Let's... put all this#  behind us. End the#  conflict.";
                    message[6] = "* You can come stay with#  me. Live out a happy,#  violence-free childhood.";
                    message[7] = "* You've gone through so#  much. More than any#  child should.";
                    message[8] = "* I think... I hope...#  you can change for the#  better.";
                    message[9] = "* ...";
                    message[10] = "* ...What do you say?";
                    prt[0] = spr_martlet_head_moderate;
                    prt[1] = spr_martlet_head_downer;
                    prt[2] = spr_martlet_head_downer;
                    prt[3] = spr_martlet_head_sad;
                    prt[4] = spr_martlet_head_sad;
                    prt[5] = spr_martlet_head_downer;
                    prt[6] = spr_martlet_head_downer;
                    prt[7] = spr_martlet_head_sad;
                    prt[8] = spr_martlet_head_melancholic;
                    prt[9] = spr_martlet_head_sad;
                    prt[10] = spr_martlet_head_melancholic;
                    ch_msg = 10;
                    ch[1] = "...";
                    ch[2] = "...Okay";
                    
                    if (outcome == 1)
                    {
                        message[11] = "* I understand if you're#  hesitant but please...#  trust me...";
                        prt[11] = spr_martlet_head_melancholic;
                    }
                    
                    if (outcome == 2)
                    {
                        message[11] = "* Thank you, Clover.";
                        prt[11] = spr_martlet_head_melancholic;
                    }
                    
                    message[12] = "* This is the best#  outcome for everyone.";
                    message[13] = "* ...";
                    message[14] = "* Well... let's go to#  Snowdin.";
                    prt[12] = spr_martlet_head_melancholic;
                    prt[13] = spr_martlet_head_wondering;
                    prt[14] = spr_martlet_head_regular;
                    
                    if (message_current == 1)
                        obj_martlet_npc.npc_direction = "down";
                    
                    if (message_current >= 9)
                        scr_audio_fade_out(mus_acquittal, 1000);
                    
                    break;
            }
        }
        
        break;
    
    case 28:
        cutscene_npc_walk_relative(obj_martlet_npc, 0, 20, 1, "y", "down");
        break;
    
    case 29:
        cutscene_instance_create(obj_martlet_npc.x, obj_martlet_npc.y, obj_hotland_roof_martlet_vine);
        break;
    
    case 30:
        break;
    
    case 31:
        cutscene_wait(1);
        break;
    
    case 32:
        cutscene_dialogue_dark();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            
            switch (text_var)
            {
                case 0:
                case 1:
                    message[0] = "  W-What is this?";
                    message[1] = "  Clover...?";
                    message[2] = "  W-Why would you...";
                    break;
                
                case 2:
                case 3:
                    message[0] = "  W-What is this?";
                    message[1] = "  Clover...?";
                    message[2] = "  I should've k-known...";
                    break;
            }
        }
        
        break;
    
    case 33:
        obj_hotland_roof_martlet_vine.scene++;
        cutscene_advance();
        break;
    
    case 34:
        break;
    
    case 35:
        cutscene_wait(1.5);
        break;
    
    case 36:
        cutscene_music_start(38);
        break;
    
    case 37:
        if (cutscene_dialogue())
        {
            if (abandoned_geno)
                instance_create_depth(obj_pl.x, obj_pl.y, -1000, obj_heart_initiate_battle_flowey_rooftop);
        }
        
        if (abandoned_geno == false)
        {
            with (msg)
            {
                var message_insert = 2;
                talker[0] = obj_flowey_npc;
                message[0] = "* You gotta be kidding me!";
                message[1] = "* I just knew something#  like this would happen!";
                prt[0] = flowey_pissed;
                prt[1] = flowey_pissed;
                
                if (global.save_count > 0)
                {
                    message_insert = 2;
                    message[2] = "* And after all we've been#  through...";
                    prt[2] = flowey_sad;
                }
                else
                {
                    message_insert = 4;
                    message[2] = "* Our friendship was#  always one sided, wasn't#  it?";
                    message[3] = "* After all, you never#  bothered to save even#  ONCE!";
                    message[4] = "* Still...";
                    prt[2] = spr_flowey_angry;
                    prt[3] = spr_flowey_angry;
                    prt[4] = flowey_pissed;
                }
                
                message[message_insert + 1] = "* I tried for so long.";
                message[message_insert + 2] = "* I tried to uphold a#  friendly persona but#  wow...";
                message[message_insert + 3] = "* You really brought me to#  my limit!";
                message[message_insert + 4] = "* Though, I gotta say, it#  did feel good to finally#  SNAP, ya know?";
                message[message_insert + 5] = "* She never saw it coming!";
                message[message_insert + 6] = "* Best of all, she thought#  YOU betrayed her in the#  end!";
                message[message_insert + 7] = "* What an IDIOT!";
                message[message_insert + 8] = "* I bet she even-   ";
                prt[message_insert + 1] = flowey_pissed;
                prt[message_insert + 2] = flowey_pissed;
                prt[message_insert + 3] = flowey_pissed;
                prt[message_insert + 4] = flowey_evil;
                prt[message_insert + 5] = flowey_grin;
                prt[message_insert + 6] = flowey_evil;
                prt[message_insert + 7] = flowey_evil;
                prt[message_insert + 8] = flowey_smirk;
                sndfnt_array[0] = sndfnt_flowey;
                sndfnt_array[message_insert + 4] = sndfnt_flowey_2;
                sndfnt_array[message_insert + 8] = sndfnt_flowey;
                
                if (message_current == (message_insert + 8))
                {
                    if (cutoff >= string_length(message[message_current]))
                    {
                        instance_create_depth(obj_pl.x, obj_pl.y, -1000, obj_heart_initiate_battle_flowey_rooftop);
                        instance_destroy();
                        global.dialogue_open = false;
                        other.scene++;
                    }
                    
                    skippable = false;
                }
            }
        }
        else
        {
            with (msg)
            {
                talker[0] = obj_flowey_npc;
                message[0] = "* Oops! Got to her first!";
                message[1] = "* Though I must say...";
                message[2] = "* The whole “false sense#  of security” bit? Very#  clever.";
                message[3] = "* ...";
                message[4] = "* No way...";
                message[5] = "* Don't tell me you were#  ACTUALLY trying to turn#  this around.";
                message[6] = "* After what you did to#  all those poor monsters?";
                message[7] = "* Hahahaha!!!";
                message[8] = "* That's just too funny!";
                message[9] = "* I don't care how#  mind-numbingly#  sympathetic she was...";
                message[10] = "* There is no ticket to#  redemption for your#  actions.";
                message[11] = "* ...Oh, right!";
                message[12] = "* Surprise! I betrayed#  you!";
                message[13] = "* Real sorry, but hey,#  thanks for abandoning#  your rampage!";
                message[14] = "* You were gettin' pretty#  strong for a second#  there.";
                message[15] = "* I'm not usually the#  worrying type but whew!";
                message[16] = "* Dodged a bullet! Haha!";
                prt[0] = flowey_smirk;
                prt[1] = flowey_plains;
                prt[2] = flowey_smirk;
                prt[3] = flowey_nice;
                prt[4] = flowey_plain;
                prt[5] = flowey_worried;
                prt[6] = flowey_plains;
                prt[7] = spr_flowey_grin;
                prt[8] = spr_flowey_grin_forward;
                prt[9] = flowey_niceside;
                prt[10] = flowey_nice;
                prt[11] = flowey_nice;
                prt[12] = flowey_smirk;
                prt[13] = flowey_niceside;
                prt[14] = flowey_wink;
                prt[15] = flowey_worriedside;
                prt[16] = flowey_worried;
                sndfnt = sndfnt_flowey;
            }
        }
        
        break;
    
    case 38:
        cutscene_advance();
        break;
    
    case 39:
        if (!instance_exists(obj_heart_initiate_battle_flowey_rooftop))
            cutscene_advance();
        
        break;
    
    case 40:
        audio_play_sound(snd_fail, 1, 0);
        cutscene_instance_create(0, 0, obj_rooftop_resettext);
        instance_create(0, 0, obj_flowey_battle_screen_glitch_fight);
        break;
    
    case 41:
        cutscene_wait(1);
        break;
    
    case 42:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            
            if (abandoned_geno == false)
            {
                message[0] = "* Nuh-uh-uh!";
                message[1] = "* Trigger-happy are we?";
                message[2] = "* I think you forgot who's#  in charge here.";
                prt[0] = flowey_wink;
                prt[1] = flowey_smirk;
                prt[2] = flowey_smirk;
            }
            else
            {
                message[0] = "* Whoa! Make that two!";
                message[1] = "* Trigger-happy are we?";
                message[2] = "* I think you forgot#  who's in charge here.";
                prt[0] = flowey_niceside;
                prt[1] = flowey_nice;
                prt[2] = flowey_smirk;
            }
        }
        
        break;
    
    case 43:
        var xx = obj_pl.x;
        var yy = obj_pl.y;
        var offset = 14;
        audio_play_sound(snd_undertale_appear, 1, 0);
        scr_audio_fade_out(cutscene_music, 500);
        instance_create_depth(xx - (offset * 1.5), yy, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx - offset, yy - offset, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx, yy - (offset * 1.5), depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx + offset, yy + offset, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx + (offset * 1.5), yy, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx + offset, yy - offset, depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx, yy + (offset * 1.5), depth - 2, obj_hotland_roof_flowey_pellets);
        instance_create_depth(xx - offset, yy + offset, depth - 2, obj_hotland_roof_flowey_pellets);
        cutscene_advance();
        break;
    
    case 44:
        cutscene_wait(1);
        break;
    
    case 45:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* We had a nice run,#  didn't we?";
            prt[0] = flowey_nice;
        }
        
        break;
    
    case 46:
        with (obj_hotland_roof_flowey_pellets)
            scene = 1;
        
        cutscene_advance();
        break;
    
    case 47:
        cutscene_wait(1.5);
        break;
    
    case 48:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Too bad I won't#  miss it.";
            prt[0] = flowey_evil;
            sndfnt = sndfnt_flowey_2;
        }
        
        break;
    
    case 49:
        if (cutscene_npc_action_sprite(obj_flowey_npc, spr_flowey_rooftop_grows, 1, true, 1))
        {
            obj_flowey_npc.action_sprite_stop = false;
            obj_flowey_npc.action_sprite = true;
            obj_flowey_npc.sprite_index = spr_flowey_laughs;
            obj_flowey_npc.image_speed = 1;
            obj_flowey_npc.image_index = 0;
            obj_player_npc.xstart = obj_player_npc.x;
            obj_player_npc.ystart = obj_player_npc.y;
            clover_shake = true;
            audio_play_sound(snd_flowey_laugh, 1, 0);
            alarm[0] = 15;
        }
        
        break;
    
    case 50:
        obj_player_npc.npc_dynamic_depth = false;
        obj_player_npc.depth = depth - 1;
        obj_flowey_npc.npc_dynamic_depth = false;
        obj_flowey_npc.depth = depth - 1;
        
        if (!instance_exists(obj_hotland_roof_flowey_pellets))
        {
            instance_destroy(obj_player_npc);
            obj_pl.image_alpha = 0;
            obj_flowey_npc.image_alpha = 0;
            var heart = instance_create_depth(obj_pl.x, obj_pl.y, -10000, obj_heart_flowey_rooftop);
            heart.image_alpha = 0;
            audio_play_sound(snd_hurt, 1, 0);
            cutscene_advance();
        }
        else if (instance_exists(obj_hotland_roof_flowey_pellets) && obj_hotland_roof_flowey_pellets.scene >= 4)
        {
            if (draw_alpha < 0.99)
                draw_alpha = lerp(draw_alpha, 1, 0.04);
            else
                draw_alpha = 1;
        }
        
        break;
    
    case 51:
        if (cutscene_wait(2))
        {
            if (!texture_is_ready("BattleHotlandFloweyPhase1"))
                texture_prefetch("BattleHotlandFloweyPhase1");
        }
        
        break;
    
    case 52:
        if (obj_heart_flowey_rooftop.image_alpha < 0.99)
            obj_heart_flowey_rooftop.image_alpha += 0.05;
        else
            cutscene_advance();
        
        break;
    
    case 53:
        cutscene_wait(3.5);
        break;
    
    case 54:
        if (obj_flowey_npc.image_alpha >= 1)
            cutscene_wait(1.5);
        else
            obj_flowey_npc.image_alpha += 0.05;
        
        break;
    
    case 55:
        obj_heart_flowey_rooftop.waiter = 1;
        instance_create_depth(obj_flowey_npc.x - 1, obj_flowey_npc.y + 9, obj_flowey_npc.depth - 10001, obj_hotland_roof_soul_grab);
        cutscene_advance();
        break;
    
    case 56:
        var img_index = obj_hotland_roof_soul_grab.image_index;
        
        if (img_index >= 15)
            obj_heart_flowey_rooftop.image_alpha = 0;
        
        if (img_index >= 19)
            draw_alpha_white = (img_index - 19) / (obj_hotland_roof_soul_grab.image_number - 1 - 19);
        
        if (img_index >= (obj_hotland_roof_soul_grab.image_number - 1))
        {
            obj_hotland_roof_soul_grab.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 57:
        instance_destroy(obj_flowey_npc);
        instance_destroy(obj_hotland_roof_soul_grab);
        global.hotland_flag[12] = 1;
        scr_savegame();
        cutscene_advance();
        break;
    
    case 58:
        cutscene_wait(3);
        break;
    
    case 59:
        draw_alpha_white = lerp(draw_alpha_white, 0, 0.05);
        
        if (draw_alpha_white < 0.01)
        {
            draw_alpha_white = 0;
            cutscene_advance();
        }
        
        break;
    
    case 60:
        cutscene_wait(1);
        
        if (!instance_exists(obj_player_npc))
        {
            instance_create_depth(205, camera_get_view_y(view_camera[0]) + 140, obj_pl.depth, obj_player_npc);
            obj_player_npc.image_alpha = 0;
        }
        
        break;
    
    case 61:
        draw_clover_yellow_alpha = lerp(draw_clover_yellow_alpha, 1, 0.03);
        
        if (draw_clover_yellow_alpha > 0.99)
        {
            draw_clover_yellow_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 62:
        cutscene_wait(1);
        break;
    
    case 63:
        var big_flowey = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, -99999, obj_flowey_rooftop_big);
        var noise = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, -999990, obj_flowey_rooftop_noise);
        cutscene_advance();
        noise_pop = 0;
        break;
    
    case 64:
        cutscene_wait(1);
        break;
    
    case 65:
        var noise = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, -999990, obj_flowey_rooftop_noise);
        obj_flowey_rooftop_big.image_alpha = 0;
        cutscene_advance();
        break;
    
    case 66:
        with (obj_player_npc)
        {
            if (y < (camera_get_view_y(view_camera[0]) + 180))
            {
                y += 5;
            }
            else
            {
                with (other)
                    scene = 67;
            }
        }
        
        break;
    
    case 67:
        cutscene_wait(0.5);
        break;
    
    case 68:
        var noise = instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 40, -999990, obj_flowey_rooftop_noise);
        obj_flowey_rooftop_big.y = noise.y;
        obj_flowey_rooftop_big.image_alpha = 1;
        cutscene_advance();
        break;
    
    case 69:
        cutscene_wait(0.5);
        break;
    
    case 70:
        cutscene_music_start(620);
        break;
    
    case 71:
        if (!instance_exists(obj_dialogue_flowey_alone))
            msg = instance_create(x, y, obj_dialogue_flowey_alone);
        
        if (!global.dialogue_open)
        {
            cutscene_advance();
            return true;
        }
        
        var flowey_face;
        
        with (msg)
        {
            sndfnt = sndfnt_flowey;
            message[0] = "* MMMmm I shoulda done this#  earlier, huh!";
            message[1] = "* Oh?";
            message[2] = "* You're still holding on? So#  stubborn!";
            message[3] = "* Lighten up a little, pal!";
            message[4] = "* You do know this didn't have to#  happen, right?";
            message[5] = "* We had a plan. A simple one.";
            message[6] = "* Go. To. ASGORE.";
            message[7] = "* But I guess you're too stupid#  to follow directions.";
            message[8] = "* Don't know why I thought this#  would end any differently...";
            
            if (global.meta_flowey_fight_count == 0)
            {
                message[9] = "* You've always been predictable.";
                message[10] = "* Oh? What do I mean? Well,#  buddy, let me show you!";
            }
            else
            {
                message[9] = "* You've always been#  predictable, heh.";
                message[10] = "* But enough about YOU.";
                message[11] = "* I wanna have a little fun#  before I absorb your SOUL for#  good!";
            }
            
            switch (message_current)
            {
                case 0:
                    flowey_face = 3144;
                    break;
                
                case 1:
                    flowey_face = 699;
                    break;
                
                case 2:
                    flowey_face = 2921;
                    break;
                
                case 3:
                    flowey_face = 1953;
                    break;
                
                case 4:
                    flowey_face = 1358;
                    break;
                
                case 5:
                    flowey_face = 1358;
                    break;
                
                case 6:
                    flowey_face = 3573;
                    break;
                
                case 7:
                    flowey_face = 2930;
                    break;
                
                case 8:
                    flowey_face = 2930;
                    break;
                
                case 9:
                    if (global.meta_flowey_fight_count == 0)
                        flowey_face = 2921;
                    else
                        flowey_face = 2921;
                    
                    break;
                
                case 10:
                    if (global.meta_flowey_fight_count == 0)
                        flowey_face = 1953;
                    else
                        flowey_face = 2727;
                    
                    break;
                
                case 11:
                    flowey_face = 3124;
                    break;
                
                default:
                    flowey_face = 1358;
                    break;
            }
            
            switch (message_current)
            {
                case 4:
                case 6:
                case 7:
                case 10:
                    if (other.noise_pop < message_current)
                    {
                        other.noise_pop = message_current;
                        instance_create_depth(obj_flowey_rooftop_big.x, obj_flowey_rooftop_big.y, -999990, obj_flowey_rooftop_noise);
                    }
                    
                    break;
            }
            
            if (message_current == 6)
            {
                sndfnt = sndfnt_flowey_2;
                shake = true;
            }
            else
            {
                sndfnt = sndfnt_flowey;
                shake = false;
            }
        }
        
        obj_flowey_rooftop_big.sprite_index = flowey_face;
        break;
    
    case 72:
        cutscene_wait(0.5);
        break;
    
    case 73:
        if (global.meta_flowey_fight_count > 0)
        {
            var controller = instance_create_depth(0, 0, -9999, obj_flowey_world_controller);
            controller.scene = 95;
            obj_flowey_rooftop_big.persistent = true;
            obj_flowey_rooftop_big.image_xscale_base *= 2;
            obj_flowey_rooftop_big.image_yscale_base *= 2;
            obj_flowey_rooftop_big.x = 320;
            obj_flowey_rooftop_big.y = 80;
            room_goto(rm_battle_flowey);
            global.battling_boss = true;
            global.battle_start = true;
            global.sound_carry_overworld = false;
            global.cutscene = true;
            global.battle_enemy_name = "flowey";
            obj_pl.image_alpha = 0;
            global.player_can_run = true;
            instance_destroy();
            exit;
        }
        
        audio_play_sound(mus_cymbal, 10, 0);
        cutscene_advance();
        break;
    
    case 74:
        if (!instance_exists(obj_flowey_rooftop_noise))
        {
            var rand = 50;
            
            if (irandom_range(1, 50) == 1)
                instance_create_depth(obj_flowey_rooftop_big.x, obj_flowey_rooftop_big.y, -999990, obj_flowey_rooftop_noise);
        }
        
        scr_audio_fade_out(mus_flowey_soundscape, 1000);
        cutscene_screenshake(999, 1);
        
        if (draw_alpha_white < 1)
            draw_alpha_white += 0.007;
        else
            cutscene_advance();
        
        break;
    
    case 75:
        cutscene_wait(1);
        break;
    
    case 76:
        cutscene_change_room(rm_flashback_01, 184, 651, 0.1);
        break;
}

if (scene >= 50 && scene <= 53 && !audio_is_playing(snd_flowey_laugh))
{
    if (obj_flowey_npc.sprite_index == spr_flowey_laughs || obj_flowey_npc.sprite_index == spr_flowey_rooftop_grows)
    {
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_flowey_rooftop_grows, 1, false))
            scene -= 1;
    }
}

if (clover_shake == true)
{
    if (!instance_exists(obj_player_npc))
    {
        clover_shake = false;
        exit;
    }
    
    obj_player_npc.x = obj_player_npc.xstart;
    obj_player_npc.y = obj_player_npc.ystart;
    obj_player_npc.x += random_range(-0.5, 0.5);
    obj_player_npc.y += random_range(-0.5, 0.5);
}
