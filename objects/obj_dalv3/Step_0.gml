var __b__;

script_execute(scr_depth, 0, 0, 0, 0, 0);

if (global.route == 2 && global.flag[21] == false)
{
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* Well, here we are.";
            message[1] = "* Thank you...";
            message[2] = "* For everything.";
            message[3] = "* You have really helped#  me out.";
            message[4] = "* Because of this...";
            message[5] = "* I'm leaving this place.";
            message[6] = "* I'm tired of being#  alone.";
            message[7] = "* It'll take a few days to#  pack up...";
            message[8] = "* But I think I'm ready to#  give the Underground#  another shot.";
            message[9] = "* I have so much#  creativity I've been#  storing up.";
            message[10] = "* I'm finally ready to let#  my talents show.";
            message[11] = "* I can publish my novel,#  have an organ concert,";
            message[12] = "* I might even make#  another friend!";
            message[13] = "* What a world it would be#  if I had two whole#  friends.";
            message[14] = "* I'll go around and place#  corn on every doorstep.";
            message[15] = "* Everyone needs a little#  corn in their life.";
            message[16] = "* I've eaten corn every#  day for a year and I'm#  doing moderately OK.";
            message[17] = "* So much to learn, so#  much to teach. I'm very#  excited!";
            message[18] = "* Oops. There I go again#  with my rambling.";
            message[19] = "* Let's get you out of#  here.";
            message[20] = "* Oh...";
            message[21] = "* It seems the exit is#  blocked off...";
            message[22] = "* Let's see.";
            prt[0] = 1755;
            prt[1] = 1769;
            prt[2] = 1769;
            prt[3] = 1769;
            prt[4] = 1780;
            prt[5] = 1776;
            prt[6] = 1763;
            prt[7] = 1780;
            prt[8] = 1776;
            prt[9] = 1761;
            prt[10] = 1769;
            prt[11] = 1769;
            prt[12] = 1761;
            prt[13] = 1761;
            prt[14] = 1769;
            prt[15] = 1769;
            prt[16] = 1776;
            prt[17] = 1769;
            prt[18] = 1768;
            prt[19] = 1776;
            prt[20] = 1755;
            prt[21] = 1755;
            prt[22] = 1755;
        }
        
        waiter++;
    }
    
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 20)
            direction = 90;
        else
            direction = 270;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        direction = 90;
        
        if (y > 80)
        {
            npc_walking = true;
            y -= 2;
            
            if (y < 80)
                y = 80;
        }
        
        if (y == 80)
        {
            npc_walking = false;
            waiter++;
        }
    }
    
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_pacifist)
    {
        if (no_loop_sound == false)
        {
            audio_play_sound(snd_wood_pull, 1, 0);
            no_loop_sound = true;
        }
        
        sprite_index = spr_dalv_npc_boards_pacifist;
        image_speed = 1/3;
        image_index = 0;
    }
    
    if (waiter == 4)
    {
        direction = 270;
        sprite_index = cdalv_down;
        y += 21;
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            ch_msg = 2;
            ch[1] = "Clover";
            message[0] = "* There we go. You're all#  set.";
            message[1] = "* Oh, before I forget,#  I never asked for#  your name!";
            message[2] = "* Mind informing me?";
            message[3] = "* Clover? What a nice name.";
            message[4] = "* Well, Clover, thank you#  so much.";
            message[5] = "* See you later...";
            message[6] = "* Friend.";
            prt[0] = 1776;
            prt[1] = 1769;
            prt[2] = 1776;
            prt[3] = 1769;
            prt[4] = 1776;
            prt[5] = 1769;
            prt[6] = 1773;
        }
        
        waiter++;
    }
    
    if (waiter == 5 && !instance_exists(obj_dialogue))
    {
        spritelock = true;
        
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, 1031, 2, 0);
        
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == false)
            {
                clover_walk_backwards = true;
                autowalk_direction = "left";
                state = scr_autowalk_state;
                alarm[1] = 10;
                obj_dalv3.no_loop_autowalk = true;
            }
        }
        
        if (x == 160 && y == 170)
        {
            npc_walking = false;
            image_speed = 0;
            image_index = 0;
            fadeout = true;
            
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker);
                waiter++;
            }
        }
    }
    
    if (waiter == 6)
    {
        global.flag[29] = 1;
        global.cutscene = false;
        waiter = 0;
        
        with (obj_pl)
        {
            autowalk_direction = "right";
            state = scr_autowalk_state;
            alarm[1] = 10;
        }
    }
}
else if (global.route == 2 && global.flag[21] == true)
{
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* Well, here we are.";
            message[1] = "* I should thank you...";
            message[2] = "* For helping me out#  so much.";
            message[3] = "* Because of this...";
            message[4] = "* I'm leaving this place.";
            message[5] = "* I'm tired of being#  alone.";
            message[6] = "* It'll take a few days to#  pack up...";
            message[7] = "* But I think I'm ready to#  give the Underground#  another shot.";
            message[8] = "* I suppose I should get#  you out of here but...";
            message[9] = "* Honestly, you confuse me.";
            message[10] = "* You hurt me but yet, you#  gave me freedom.";
            message[11] = "* Is that what real#  friends do?";
            message[12] = "* If so I don't know if I#  really want to leave.";
            message[13] = "* If everyone will hurt me#  then help me...";
            message[14] = "* Is that a place I want#  to be?";
            message[15] = "* Well... I can't let this#  opportunity pass.";
            message[16] = "* It's ok, I forgive you.";
            message[17] = "* You probably were scared#  by me...";
            message[18] = "* Most monsters are...";
            message[19] = "* ...";
            message[20] = "* It seems the exit is#  blocked off...";
            message[21] = "* I'll deal with it.";
            prt[0] = 1755;
            prt[1] = 1769;
            prt[2] = 1769;
            prt[3] = 1780;
            prt[4] = 1759;
            prt[5] = 1763;
            prt[6] = 1780;
            prt[7] = 1776;
            prt[8] = 1755;
            prt[9] = 1763;
            prt[10] = 1768;
            prt[11] = 1768;
            prt[12] = 1763;
            prt[13] = 1763;
            prt[14] = 1780;
            prt[15] = 1759;
            prt[16] = 1776;
            prt[17] = 1755;
            prt[18] = 1780;
            prt[19] = 1755;
            prt[20] = 1763;
            prt[21] = 1755;
        }
        
        waiter++;
    }
    
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 19)
            direction = 90;
        else
            direction = 270;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_neutral)
    {
        if (no_loop_sound == false)
        {
            audio_play_sound(snd_wood_zap, 1, 0);
            no_loop_sound = true;
        }
        
        sprite_index = spr_dalv_npc_boards_neutral;
        image_speed = 1/3;
        image_index = 0;
    }
    
    if (waiter == 4)
    {
        direction = 270;
        sprite_index = cdalv_down;
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            ch_msg = 2;
            ch[1] = "Clover";
            message[0] = "* There we go. You're all#  set.";
            message[1] = "* Oh, before I forget,#  I never asked for#  your name.";
            message[2] = "* Mind informing me?";
            message[3] = "* Clover? What a nice name.";
            message[4] = "* Well, Clover, you should#  get going.";
            message[5] = "* See you later...";
            message[6] = "* Friend.";
            prt[0] = 1776;
            prt[1] = 1769;
            prt[2] = 1776;
            prt[3] = 1769;
            prt[4] = 1776;
            prt[5] = 1769;
            prt[6] = 1773;
        }
        
        waiter++;
    }
    
    if (waiter == 5 && !instance_exists(obj_dialogue))
    {
        spritelock = true;
        
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, 1031, 2, 0);
        
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == false)
            {
                clover_walk_backwards = true;
                autowalk_direction = "left";
                state = scr_autowalk_state;
                alarm[1] = 10;
                obj_dalv3.no_loop_autowalk = true;
            }
        }
        
        if (x == 160 && y == 170)
        {
            npc_walking = false;
            image_speed = 0;
            image_index = 0;
            fadeout = true;
            
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker);
                waiter++;
            }
        }
    }
    
    if (waiter == 6)
    {
        global.flag[29] = 1;
        global.cutscene = false;
        waiter = 0;
        
        with (obj_pl)
        {
            autowalk_direction = "right";
            state = scr_autowalk_state;
            alarm[1] = 10;
        }
    }
}
else if (global.route == 1 && global.flag[21] == false)
{
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* Well, here we are.";
            message[1] = "* Thank you...";
            message[2] = "* For everything.";
            message[3] = "* You have really helped#  me out.";
            message[4] = "* Because of this...";
            message[5] = "* I'm going to be more#  friendly.";
            message[6] = "* I'm gonna be the mentor#  I always should have#  been.";
            message[7] = "* Penilla and I will draw#  together,";
            message[8] = "* Rorrim could spice up my#  wardrobe,";
            message[9] = "* And Crispy Scroll can#  show me that \"anime\"#  thing.";
            message[10] = "* I thought of leaving...";
            message[11] = "* But why leave when I#  have a great family#  right here?";
            message[12] = "* Plus I've really let the#  place go.";
            message[13] = "* A week of non-stop#  cleaning is in order!";
            message[14] = "* ...";
            message[15] = "* Well... I should get you#  out of here.";
            message[16] = "* Oh...";
            message[17] = "* It seems the exit is#  blocked off...";
            message[18] = "* Let's see.";
            prt[0] = 1755;
            prt[1] = 1776;
            prt[2] = 1769;
            prt[3] = 1769;
            prt[4] = 1769;
            prt[5] = 1769;
            prt[6] = 1769;
            prt[7] = 1761;
            prt[8] = 1761;
            prt[9] = 1761;
            prt[10] = 1780;
            prt[11] = 1776;
            prt[12] = 1763;
            prt[13] = 1759;
            prt[14] = 1780;
            prt[15] = 1755;
            prt[16] = 1768;
            prt[17] = 1763;
            prt[18] = 1755;
        }
        
        waiter++;
    }
    
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 16)
            direction = 90;
        else
            direction = 270;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        direction = 90;
        
        if (y > 80)
        {
            npc_walking = true;
            y -= 3;
            
            if (y < 80)
                y = 80;
        }
        
        if (y == 80)
        {
            npc_walking = false;
            waiter++;
        }
    }
    
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_pacifist)
    {
        if (no_loop_sound == false)
        {
            audio_play_sound(snd_wood_pull, 1, 0);
            no_loop_sound = true;
        }
        
        sprite_index = spr_dalv_npc_boards_pacifist;
        image_speed = 1/3;
        image_index = 0;
    }
    
    if (waiter == 4)
    {
        direction = 270;
        sprite_index = cdalv_down;
        y += 21;
        scr_text();
        
        with (msg)
        {
            ch_msg = 2;
            ch[1] = "Clover";
            portrait = true;
            sndfnt = 100;
            message[0] = "* There we go. You're all#  set.";
            message[1] = "* Oh, before I forget,#  I never asked for#  your name.";
            message[2] = "* Mind informing me?";
            message[3] = "* Clover? What a nice name.";
            message[4] = "* Well, Clover, you should#  get going.";
            message[5] = "* Goodbye...";
            message[6] = "* Friend.";
            prt[0] = 1776;
            prt[1] = 1769;
            prt[2] = 1776;
            prt[3] = 1769;
            prt[4] = 1776;
            prt[5] = 1769;
            prt[6] = 1773;
        }
        
        waiter++;
    }
    
    if (waiter == 5 && !instance_exists(obj_dialogue))
    {
        spritelock = true;
        
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, 1031, 3, 0);
        
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == false)
            {
                clover_walk_backwards = true;
                autowalk_direction = "left";
                state = scr_autowalk_state;
                alarm[1] = 10;
                obj_dalv3.no_loop_autowalk = true;
            }
        }
        
        if (x == 160 && y == 170)
        {
            npc_walking = false;
            image_speed = 0;
            image_index = 0;
            fadeout = true;
            
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker);
                waiter++;
            }
        }
    }
    
    if (waiter == 6)
    {
        global.flag[29] = 2;
        global.cutscene = false;
        waiter = 0;
        
        with (obj_pl)
        {
            autowalk_direction = "right";
            state = scr_autowalk_state;
            alarm[1] = 10;
        }
    }
}
else if (global.route == 1 && global.flag[21] == true)
{
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* Well, here we are.";
            message[1] = "* I should thank you...";
            message[2] = "* You have really helped#  me out.";
            message[3] = "* Because of this...";
            message[4] = "* I'm going to be friendly#  to everyone.";
            message[5] = "* ...";
            message[6] = "* I suppose I should get#  you out of here but...";
            message[7] = "* Honestly, you confuse me.";
            message[8] = "* You hurt me but yet, you#  opened my eyes.";
            message[9] = "* Is that what real#  friends do?";
            message[10] = "* I would leave but...";
            message[11] = "* If everyone outside will#  hurt me then help me...";
            message[12] = "* Is that a place I want#  to be?";
            message[13] = "* No.";
            message[14] = "* I've lived here for a#  long time.";
            message[15] = "* It's comfortable and I#  know the residents.";
            message[16] = "* The unknown is a scary#  place...";
            message[17] = "* I'm not ready for it...";
            message[18] = "* Not yet at least.";
            message[19] = "* The monsters here need#  someone to look up to.";
            message[20] = "* I could make them happy.";
            message[21] = "* ...";
            message[22] = "* Well, anyway. It seems#  the exit is blocked#  off...";
            message[23] = "* I'll deal with it.";
            prt[0] = 1755;
            prt[1] = 1769;
            prt[2] = 1769;
            prt[3] = 1769;
            prt[4] = 1769;
            prt[5] = 1755;
            prt[6] = 1780;
            prt[7] = 1763;
            prt[8] = 1763;
            prt[9] = 1763;
            prt[10] = 1780;
            prt[11] = 1763;
            prt[12] = 1763;
            prt[13] = 1759;
            prt[14] = 1755;
            prt[15] = 1769;
            prt[16] = 1763;
            prt[17] = 1764;
            prt[18] = 1768;
            prt[19] = 1776;
            prt[20] = 1769;
            prt[21] = 1780;
            prt[22] = 1755;
            prt[23] = 1755;
        }
        
        waiter++;
    }
    
    if (waiter == 2 && instance_exists(obj_dialogue))
    {
        if (msg.message_current == 21)
            direction = 90;
        else
            direction = 270;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 3 && sprite_index != spr_dalv_npc_boards_neutral)
    {
        if (no_loop_sound == false)
        {
            audio_play_sound(snd_wood_zap, 1, 0);
            no_loop_sound = true;
        }
        
        sprite_index = spr_dalv_npc_boards_neutral;
        image_speed = 1/3;
        image_index = 0;
    }
    
    if (waiter == 4)
    {
        direction = 270;
        sprite_index = cdalv_down;
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            ch_msg = 2;
            ch[1] = "Clover";
            message[0] = "* There we go. You're all#  set.";
            message[1] = "* Oh, before I forget,#  I never asked for#  your name.";
            message[2] = "* Mind informing me?";
            message[3] = "* Clover? What a nice name.";
            message[4] = "* Well, Clover, you should#  get going.";
            message[5] = "* Goodbye...";
            message[6] = "* Friend.";
            prt[0] = 1776;
            prt[1] = 1769;
            prt[2] = 1776;
            prt[3] = 1769;
            prt[4] = 1776;
            prt[5] = 1776;
            prt[6] = 1769;
        }
        
        waiter++;
    }
    
    if (waiter == 5 && !instance_exists(obj_dialogue))
    {
        spritelock = true;
        
        if (x != 160 || y != 170)
            scr_walk_ai(160, 170, 1031, 3, 0);
        
        with (obj_pl)
        {
            if (distance_to_object(obj_dalv3) <= 20 && obj_dalv3.no_loop_autowalk == false)
            {
                clover_walk_backwards = true;
                autowalk_direction = "left";
                state = scr_autowalk_state;
                alarm[1] = 10;
                obj_dalv3.no_loop_autowalk = true;
            }
        }
        
        if (x == 160 && y == 170)
        {
            npc_walking = false;
            image_speed = 0;
            image_index = 0;
            fadeout = true;
            
            if (image_alpha <= 0.2)
            {
                instance_create(144, 188, obj_dalvExit_blocker);
                waiter++;
            }
        }
    }
    
    if (waiter == 6)
    {
        global.flag[29] = 2;
        global.cutscene = false;
        waiter = 0;
        
        with (obj_pl)
        {
            autowalk_direction = "right";
            state = scr_autowalk_state;
            alarm[1] = 10;
        }
    }
}

with (other)
{
    if (fadeout == true)
        scr_npc_fade();
    
    if (sprite_index != spr_dalv_npc_boards_pacifist && sprite_index != spr_dalv_npc_boards_neutral)
    {
        if (spritelock == true)
        {
            if (vspeed != 0 || hspeed != 0 || path_speed != 0 || npc_walking == true)
            {
                switch (direction div 90)
                {
                    case 0:
                        sprite_index = cdalv_right;
                        break;
                    
                    case 1:
                        sprite_index = cdalv_up;
                        break;
                    
                    case 2:
                        sprite_index = cdalv_left;
                        break;
                    
                    case 3:
                        sprite_index = cdalv_down;
                        break;
                }
            }
            else
            {
                switch (direction div 90)
                {
                    case 0:
                        sprite_index = cdalv_rightt;
                        break;
                    
                    case 1:
                        sprite_index = cdalv_up;
                        break;
                    
                    case 2:
                        sprite_index = cdalv_leftt;
                        break;
                    
                    case 3:
                        sprite_index = cdalv_downt;
                        break;
                }
                
                if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 100)
                {
                    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
                    {
                        image_speed = 0;
                        image_index = 0;
                    }
                    else
                    {
                        image_speed = 0.2;
                    }
                }
            }
        }
        
        if (speed > 0)
            image_speed = 0.2;
    }
}

__b__ = action_if_variable(fadein, true, 0);

if (__b__)
    script_execute(anim_fade, 0.05, 0, 0, 0, 0);
