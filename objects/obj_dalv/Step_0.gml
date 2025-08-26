script_execute(scr_depth, 0, 0, 0, 0, 0);

if (fadeout == true)
    scr_npc_fade();

if (room == rm_darkruins_07 && global.flag[25] == 1)
{
    instance_destroy();
    exit;
}

if (!instance_exists(obj_pl))
    exit;

if (room == rm_darkruins_07)
{
    if (global.flag[25] == 0)
    {
        if (obj_pl.x > 800)
        {
            with (obj_radio)
                audio_sound_gain(bgm, 0, 1000);
            
            obj_pl.state = scr_frozen_state;
            global.cutscene = true;
            obj_pl.image_speed = 0;
            obj_pl.image_index = 0;
            
            if (timer < 130 || (timer >= 132 && timer < 210) || (timer >= 212 && timer < 235) || (timer >= 237 && timer < 350))
                timer++;
            
            if (timer == 30)
            {
                cam = instance_create(obj_pl.x, obj_pl.y, obj_camera);
                cam.speed = 2;
                __view_set(e__VW.Object, 0, obj_camera);
                direction = 0;
            }
            
            if (timer == 130)
            {
                speed = 0;
                image_speed = 0;
                image_index = 0;
                
                if (!instance_exists(obj_dialogue))
                    msg = instance_create(x, y, obj_dialogue);
                
                with (msg)
                {
                    sndfnt = sndfnt_dalv;
                    message[0] = "* Hello...";
                    message[1] = "* I'm happy to finally meet you#  face to face.";
                    message[2] = "* How long has it been?";
                    message[3] = "* I was wondering if you'd ever#  come back...";
                    message[4] = "* ...";
                    message[5] = "* No... too forward.";
                    message[6] = "* Who am I kidding? I'll never#  be able to meet you in this#  state.";
                    message[7] = "* I just hope you know... I had#  no choice. It must be this way.";
                    portrait = false;
                }
                
                timer++;
            }
            
            if (timer == 131 && !instance_exists(obj_dialogue))
            {
                speed = 0.6;
                timer++;
            }
            
            if (timer == 210)
            {
                image_speed = 0;
                image_index = 0;
                speed = 0;
                
                if (!instance_exists(obj_dialogue))
                    msg = instance_create(x, y, obj_dialogue);
                
                with (msg)
                {
                    sndfnt = sndfnt_dalv;
                    message[0] = "* ...";
                    message[1] = "* Huh?";
                    portrait = false;
                }
                
                timer++;
            }
        }
        
        if (timer == 211 && !instance_exists(obj_dialogue))
        {
            direction = 270;
            timer++;
        }
        
        if (timer == 221 && !instance_exists(obj_dialogue))
            direction = 180;
        
        if (timer == 235 && !instance_exists(obj_dialogue))
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue);
            
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_dalv;
                message[0] = "* Who...?";
                message[1] = "* I-I must be seeing things...";
            }
            
            timer++;
        }
        
        if (timer == 236 && !instance_exists(obj_dialogue))
        {
            direction = 180;
            image_speed = 0.1;
            speed = -0.25;
            timer++;
        }
        
        if (timer == 270 && !instance_exists(obj_dialogue))
        {
            image_speed = 0;
            image_index = 0;
            direction = 180;
            speed = 0;
        }
        
        if (timer == 310 && !instance_exists(obj_dialogue))
        {
            direction = 0;
            speed = 2;
        }
        
        if (timer == 350)
        {
            if (!instance_exists(obj_camera))
                cam2 = instance_create(1000, obj_pl.y, obj_camera);
            
            __view_set(e__VW.Object, 0, cam2);
            
            with (cam2)
            {
                direction = 180;
                speed = 3;
            }
            
            if (obj_camera.x <= obj_pl.x)
            {
                timer++;
                __view_set(e__VW.Object, 0, obj_pl);
                global.cutscene = false;
                obj_pl.state = scr_normal_state;
                global.flag[25] = 1;
                
                with (obj_radio)
                    audio_sound_gain(bgm, 1, 2000);
                
                with (cam2)
                    instance_destroy();
            }
        }
    }
}

if (room == rm_darkruins_10 && global.flag[3] == true)
{
    instance_destroy();
    exit;
}

if (room == rm_darkruins_10 && global.flag[3] == false)
{
    obj_rndenc.disabled = true;
    
    if (obj_pl.x > 420 && obj_pl.y < 240)
    {
        scr_cutscene_start();
        obj_pl.image_speed = 0;
        obj_pl.image_index = 0;
        
        if (timer < 30 || (timer >= 32 && timer < 110) || (timer >= 112 && timer < 250) || (timer >= 252 && timer < 310))
            timer++;
        
        if (timer == 30)
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue);
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* Is it wrong to hold doubt in#  my actions?";
                portrait = false;
            }
            
            timer++;
        }
        
        if (timer == 31 && !instance_exists(obj_dialogue))
        {
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera);
            
            if (cam.x < 600)
                cam.speed = 3;
            else
                cam.speed = 0;
            
            __view_set(e__VW.Object, 0, obj_camera);
            timer++;
        }
        
        if (timer == 110)
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue);
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                position = 1;
                message[0] = "* I enjoyed life before... I#  did... But I can't go back.";
                message[1] = "* What happened that day would#  only repeat.";
                message[2] = "* ...";
                portrait = false;
            }
            
            timer++;
        }
        
        if (timer == 111 && !instance_exists(obj_dialogue))
            timer++;
        
        if (timer == 151 && !instance_exists(obj_dialogue))
        {
            direction = 270;
            timer++;
        }
        
        if (timer == 190 && !instance_exists(obj_dialogue))
            direction = 180;
        
        if (timer == 250 && !instance_exists(obj_dialogue))
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue);
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                position = 1;
                message[0] = "* !";
                message[1] = "* What is this?";
                message[2] = "* Why do they appear every time#  I start monologuing? ";
                message[3] = "* I need more rest.";
                portrait = false;
            }
            
            timer++;
        }
        
        if (timer == 251 && !instance_exists(obj_dialogue))
        {
            direction = 0;
            speed = 3;
            image_speed = 0.2;
            timer++;
        }
        
        if (timer == 310)
        {
            if (!instance_exists(obj_camera))
                cam2 = instance_create(600, obj_pl.y, obj_camera);
            
            if (cam2.x >= obj_pl.x)
            {
                cam2.speed = -2;
            }
            else
            {
                with (cam2)
                    instance_destroy();
                
                __view_set(e__VW.Object, 0, obj_pl);
                scr_cutscene_end();
                global.flag[3] = true;
                obj_rndenc.disabled = false;
                instance_destroy();
            }
        }
    }
}

if (room == rm_darkruins_16 && global.flag[26] == 1)
{
    if (global.flag[17] != 0 && global.dalv_house_enter_count == 0)
        global.dalv_house_enter_count = 1;
    
    instance_destroy();
    exit;
}

if (room == rm_darkruins_16 && global.flag[26] == 0)
{
    if (obj_pl.x < 520 && timer == 0)
    {
        with (obj_radio)
            audio_sound_gain(bgm, 0, 1000);
        
        global.cutscene = true;
        obj_pl.image_speed = 0;
        obj_pl.image_index = 0;
        timer++;
    }
    
    if ((timer > 3 && timer < 60) || (timer > 61 && timer < 70) || (timer > 71 && timer < 80) || (timer > 81 && timer < 110) || (timer > 111 && timer < 140))
        timer++;
    
    if (timer == 1)
    {
        direction = 90;
        
        with (obj_pl)
        {
            direction = 180;
            speed = 2;
            image_speed = 0.2;
        }
        
        timer++;
    }
    
    if (obj_pl.x <= 380 && timer == 2)
    {
        with (obj_pl)
        {
            direction = 90;
            speed = 2;
        }
        
        speed = 0.5;
        timer++;
    }
    
    if (obj_pl.y < 260 && timer == 3)
    {
        with (obj_pl)
        {
            direction = 90;
            speed = 0;
            image_speed = 0;
            image_index = 0;
        }
        
        timer++;
    }
    
    if (timer == 30)
        speed = 1;
    
    if (timer == 60)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            sndfnt = sndfnt_dalv;
            message[0] = "* Ah!";
            portrait = false;
        }
        
        speed = 0;
        image_index = 0;
        image_speed = 0;
        timer++;
    }
    
    if (timer == 61 && !instance_exists(obj_dialogue))
    {
        direction = 270;
        timer++;
    }
    
    if (timer == 70)
    {
        if (!instance_exists(obj_camera))
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera);
        
        cam.direction = 90;
        cam.speed = 4;
        __view_set(e__VW.Object, 0, cam);
        timer++;
    }
    
    if (timer == 71 && obj_camera.y < y)
    {
        timer = 72;
        obj_camera.speed = 0;
    }
    
    if (timer == 80)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            sndfnt = sndfnt_dalv;
            message[0] = "* Umm...";
            portrait = false;
        }
        
        timer++;
    }
    
    if (timer == 81 && !instance_exists(obj_dialogue))
    {
        speed = -0.3;
        image_speed = 0.2;
        timer++;
    }
    
    if (timer == 110)
    {
        speed = 0;
        image_speed = 0;
        image_index = 0;
        
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            sndfnt = sndfnt_dalv;
            portrait = false;
            message[0] = "* I don't know who you are but I#  ask you...";
            message[1] = "* Please leave!";
        }
        
        timer++;
    }
    
    if (timer == 111 && !instance_exists(obj_dialogue))
    {
        image_speed = 0.2;
        path_start(pt_dalv, 3, path_action_stop, 0);
        timer++;
    }
    
    if (timer == 140)
    {
        cam.direction = 270;
        cam.speed = 3;
        
        if (cam.y > obj_pl.y)
        {
            with (cam)
                instance_destroy();
            
            __view_set(e__VW.Object, 0, obj_pl);
            global.cutscene = false;
            obj_pl.state = scr_normal_state;
            global.flag[26] = 1;
            
            with (obj_radio)
                audio_sound_gain(bgm, 1, 2000);
            
            instance_destroy();
        }
    }
}

if (room == rm_darkruins_18 && global.flag[27] == 1)
{
    instance_destroy();
    exit;
}

if (room == rm_darkruins_18 && global.flag[27] == 0)
{
    if (global.flag[17] == 0)
    {
        if (obj_pl.y < 370 && timer == 0)
        {
            global.cutscene = true;
            
            with (obj_radio)
                audio_sound_gain(bgm, 0, 4000);
            
            obj_pl.image_speed = 0;
            obj_pl.image_index = 0;
            obj_pl.direction = 90;
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera);
            __view_set(e__VW.Object, 0, obj_camera);
            cam.vspeed = -1;
            timer++;
        }
        
        if (timer == 1 && cam.y < 320)
        {
            timer++;
            cam.vspeed = 0;
        }
        
        if ((timer > 1 && timer < 60) || (timer > 61 && timer < 90) || (timer > 91 && timer < 140) || (timer > 141 && timer < 230) || (timer > 231 && timer < 400))
            timer++;
        
        if (timer == 60)
        {
            scr_text();
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* You're... still following me?";
                message[1] = "* I thought I made it clear that#  I want to be left alone.";
                portrait = false;
                position = 0;
            }
            
            timer++;
        }
        
        if (timer == 61 && !instance_exists(obj_dialogue))
            timer++;
        
        if (timer == 90)
        {
            direction = 270;
            scr_text();
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* I don't understand... You...#  you look just like them.";
                message[1] = "* Is this some sort of haunting?#  Or have you come to finish the#  job?";
                message[2] = "* Retreating here wasn't enough#  so you hunted me down...";
                message[3] = "* Right?";
                ch_msg = 3;
                ch[1] = "What?";
                ch[2] = "...";
                portrait = false;
                position = 0;
            }
            
            timer++;
        }
        
        if (timer == 91 && !instance_exists(obj_dialogue))
            timer++;
        
        if (timer == 100)
            direction = 90;
        
        if (timer == 140)
        {
            scr_text();
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* And I was just starting to#  accept my reality.#  The cruelty...";
                message[1] = "* ...";
                message[2] = "* Whatever I did to you that day#  was not my intention, I was#  only...";
                message[3] = "* Nevermind. Words aren't#  enough.";
                portrait = false;
                position = 0;
            }
            
            timer++;
        }
        
        if (timer == 141 && !instance_exists(obj_dialogue))
            timer++;
        
        if (timer == 160)
            direction = 0;
        
        if (timer == 190)
            direction = 270;
        
        if (timer == 220)
            direction = 90;
        
        if (timer == 230)
        {
            scr_text();
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* I... I don't want to fight#  anybody, but you've invaded#  my home.";
                message[1] = "* The exit is blocked and you#  can't stay here. I will not#  allow it.";
                portrait = false;
                position = 0;
            }
            
            timer++;
        }
        
        if (timer == 231 && !instance_exists(obj_dialogue))
        {
            spritelock = false;
            direction = 45;
            sprite_index = spr_hoodoff;
            image_speed = 0.2;
            hood = false;
            timer++;
        }
        
        if (timer == 370)
        {
            spritelock = true;
            direction = 0;
        }
        
        if (timer == 390)
        {
            spritelock = true;
            direction = 270;
        }
        
        if (timer == 400)
        {
            scr_text();
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* Only one thing to#  do...";
                prt[0] = spr_dalv_head_sleepy;
                portrait = true;
                position = 0;
            }
            
            timer++;
        }
        
        if (timer == 401 && !instance_exists(obj_dialogue))
        {
            image_speed = 0;
            instance_create(x, y, obj_flash);
            timer++;
        }
    }
    else if (global.flag[17] == 1 || global.flag[17] == 4)
    {
        scr_cutscene_start();
        
        if (global.geno_complete[1] == false)
        {
            if (timer == 0)
            {
                direction = 270;
                hood = false;
                global.cutscene = true;
                scr_text();
                
                with (msg)
                {
                    sndfnt = sndfnt_dalv;
                    message[0] = "* ...";
                    message[1] = "* ...";
                    message[2] = "* ...";
                    message[3] = "* What do friends do#  actually?";
                    message[4] = "* Do you want to, um,#  see my house?#  Or something?";
                    message[5] = "* I have to go there#  anyway so I guess stop#  by if you have time. ";
                    prt[0] = spr_dalv_head_regular;
                    prt[1] = spr_dalv_head_sad_side;
                    prt[2] = spr_dalv_head_sad;
                    prt[3] = spr_dalv_head_regular;
                    prt[4] = spr_dalv_head_moderate;
                    prt[5] = spr_dalv_head_content;
                    position = 0;
                }
                
                timer = 1;
            }
            
            if (!instance_exists(obj_dialogue) && timer == 1)
                vspeed = -2;
            
            if (y < 160 && timer == 1)
            {
                global.flag[27] = 1;
                global.cutscene = false;
                obj_pl.state = scr_normal_state;
                timer = 2;
            }
        }
        else
        {
            scr_cutscene_start();
            
            if (timer == 0)
            {
                direction = 270;
                hood = false;
                global.cutscene = true;
                scr_text();
                
                with (msg)
                {
                    sndfnt = sndfnt_dalv;
                    message[0] = "You're... sparing me?";
                    message[1] = "But... what about them?";
                    message[2] = "Why only me?";
                    message[3] = "What makes me so#special!";
                    message[4] = "Or is this how you#plan to hurt me?";
                    message[5] = "By taking them all#away...";
                    message[6] = "...";
                    message[7] = "...I don't need them.#I'll be fine on my own.";
                    message[8] = "I've been doing it#long enough...";
                    message[9] = "...";
                    message[10] = "I think you should leave.";
                    message[11] = "You've already done#enough damage here.";
                    prt[0] = spr_dalv_head_sad;
                    prt[1] = spr_dalv_head_sadder;
                    prt[2] = spr_dalv_head_sad;
                    prt[3] = spr_dalv_head_sad;
                    prt[4] = spr_dalv_head_angry;
                    prt[5] = spr_dalv_head_angry;
                    prt[6] = spr_dalv_head_sad_sleepy;
                    prt[7] = spr_dalv_head_sad_side_2;
                    prt[8] = spr_dalv_head_sad_side;
                    prt[9] = spr_dalv_head_sad;
                    prt[10] = spr_dalv_head_sad;
                    prt[11] = spr_dalv_head_sad_side_2;
                    position = 0;
                }
                
                timer = 1;
            }
            
            if (!instance_exists(obj_dialogue) && timer == 1)
                vspeed = -0.5;
            
            if (y < 220 && timer == 1)
            {
                timer = 2;
                image_speed = 0;
                vspeed = 0;
                direction = 90;
            }
            
            if (timer > 1 && timer < 75)
                timer++;
            
            if (timer == 75)
            {
                scr_text();
                
                with (msg)
                {
                    sndfnt = sndfnt_dalv;
                    message[0] = "* ...";
                    message[1] = "* I guess... I truly am#  alone now...";
                    portrait = false;
                    position = 0;
                }
                
                timer = 76;
            }
            
            if (!instance_exists(obj_dialogue) && timer == 76)
            {
                vspeed = -1;
                alarm[1] = 45;
                timer = 77;
            }
        }
    }
    else if (global.flag[17] == 3)
    {
        scr_cutscene_start();
        
        if (timer == 0)
        {
            global.route = 1;
            direction = 270;
            sprite_index = spr_hoodoff;
            hood = false;
            global.cutscene = true;
            scr_text();
            
            with (msg)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* This was all a#  misunderstanding, right?";
                message[1] = "* ...";
                message[2] = "* I'll be waiting in my#  house.";
                message[3] = "* Come whenever you feel#  like it.";
                prt[0] = spr_dalv_head_regular;
                prt[1] = spr_dalv_head_sad_side;
                prt[2] = spr_dalv_head_regular;
                prt[3] = spr_dalv_head_regular;
                position = 0;
            }
            
            timer = 1;
        }
        
        if (!instance_exists(obj_dialogue) && timer == 1)
            vspeed = -2;
        
        if (y < 160 && timer == 1)
        {
            global.flag[27] = 1;
            global.cutscene = false;
            obj_pl.state = scr_normal_state;
            timer = 2;
        }
    }
    else if (global.flag[17] == 2)
    {
        instance_destroy();
        scr_cutscene_end();
        global.flag[27] = 1;
    }
}

if (room == rm_dalvshouse && global.flag[28] == 0)
{
    if (timer == 0)
    {
        global.cutscene = true;
        obj_pl.direction = 90;
        obj_pl.image_speed = 0;
        obj_pl.image_index = 0;
        timer = 4;
    }
    
    if (timer > 3 && timer < 30)
        timer++;
    
    if (timer == 30)
    {
        scr_text();
        
        with (msg)
        {
            if (global.flag[17] == 3)
            {
                global.route = 1;
                genoCount = 0;
                sndfnt = sndfnt_dalv;
                message[0] = "* Welcome...";
                message[1] = "* Make yourself at home.";
                message[2] = "* I'm going to my room to#  rest.";
                message[3] = "* I feel a bit ill.";
                message[4] = "* We're... friends now#  so...";
                message[5] = "* Look at whatever you#  like.";
                message[6] = "* See you... later.";
                prt[0] = spr_dalv_head_sad_side;
                prt[1] = spr_dalv_head_regular;
                prt[2] = spr_dalv_head_sad_side;
                prt[3] = spr_dalv_head_sad_side_2;
                prt[4] = spr_dalv_head_regular;
                prt[5] = spr_dalv_head_regular;
                prt[6] = spr_dalv_head_sad_side;
            }
            else if (global.dalv_house_enter_count == 0)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* I have to um...#  fix something in the#  other room.";
                message[1] = "* Sit down,#  get comfortable,#  take your shoes off.";
                message[2] = "* ...";
                message[3] = "* Actually please leave#  them on, the floors are#  a bit dirty.";
                message[4] = "* I haven't swept since #  this morning.";
                prt[0] = spr_dalv_head_sad_side;
                prt[1] = spr_dalv_head_moderate;
                prt[2] = spr_dalv_head_regular;
                prt[3] = spr_dalv_head_sad;
                prt[4] = spr_dalv_head_sad;
            }
            else if (global.dalv_house_enter_count == 1)
            {
                sndfnt = sndfnt_dalv;
                message[0] = "* It seems like you#  took your time.";
                message[1] = "* Oh, but don't worry, I'm#  used to standing around#  by my lonesome.";
                message[2] = "* I keep myself occupied#  by cleaning around#  the house.";
                message[3] = "* It's my hourly routine!";
                message[4] = "* ...";
                message[5] = "* I have to um...#  fix something...";
                prt[0] = spr_dalv_head_regular;
                prt[1] = spr_dalv_head_sad_side;
                prt[2] = spr_dalv_head_moderate;
                prt[3] = spr_dalv_head_moderate;
                prt[4] = spr_dalv_head_regular;
                prt[5] = spr_dalv_head_sad_side;
            }
        }
        
        timer++;
    }
    
    if (timer == 31 && !instance_exists(obj_dialogue))
    {
        timer++;
        hood = false;
        image_speed = 0.2;
        path_start(pt_dalvhouse, 3, path_action_stop, false);
        
        if (global.flag[17] != 3)
            obj_dalv2.alarm[0] = 150;
        
        alarm[0] = 75;
    }
}
