if (live_call())
    return global.live_result;

var rephil = 1434;
var toast = 1437;
var swig = 1435;
var toast_col = make_color_rgb(119, 255, 198);
var swig_col = make_color_rgb(150, 173, 255);
var rephil_col = make_color_rgb(211, 231, 221);

if (global.snowdin_flag[8] == 0)
{
    switch (scene)
    {
        case 1:
            scr_cutscene_start();
            scr_radio_fade(0, 500);
            timer = 10;
            scene++;
            break;
        
        case 2:
            if (timer > 0)
            {
                timer--;
            }
            else
            {
                with (rephil)
                {
                    image_speed = 0.25;
                    
                    if (on_animation_end())
                    {
                        sprite_index = spr_rephil_overworld_yellow;
                        image_speed = 0;
                        other.timer = 45;
                        other.scene += 1;
                    }
                }
            }
            
            break;
        
        case 3:
            if (timer > 0)
                timer--;
            
            scr_text();
            
            with (msg)
            {
                portrait = false;
                talker[0] = rephil;
                message[0] = "* Hey, watch it!";
                message[1] = "* Oh ho ho. Wouldya look at that.";
                message[2] = "* I think this chump wants to#  pass.";
                message[3] = string("* {0}! Toast! Come over here!", global.fun_swig_name);
            }
            
            if (global.dialogue_open == false)
            {
                timer = 30;
                audio_play_sound(mus_occupied_turf_yellow, 1, 1);
                scene++;
            }
            
            break;
        
        case 4:
            with (rephil)
            {
                if (y > 200)
                    y -= 3;
            }
            
            with (toast)
            {
                if (x > 190)
                    x -= 5;
            }
            
            with (swig)
            {
                if (x < 130)
                    x += 5;
            }
            
            if (timer > 0)
                timer--;
            else
                scene++;
            
            break;
        
        case 5:
            with (toast)
            {
                path_start(pt_toast_jump_snowdin_13_yellow, 5, path_action_stop, false);
                audio_play_sound(snd_toast_jump, 1, 0);
            }
            
            scene++;
            break;
        
        case 6:
            with (toast)
            {
                if (path_position == 1)
                {
                    sprite_index = spr_toast_turn_overworld_yellow;
                    image_speed = 0.5;
                    other.timer = 15;
                    other.scene++;
                }
            }
            
            break;
        
        case 7:
            if (timer > 0)
                timer--;
            else
                scene++;
            
            break;
        
        case 8:
            scr_text();
            
            with (msg)
            {
                message[0] = "* Yeah boss?";
                message[1] = "* What's up? You need a shave#  again?";
                message[2] = "* We got ourselves some fresh#  meat.";
                message[3] = "* Ha! You ain't gettin' nowhere,#  small fry!";
                message[4] = "* Yeah! Not nowhere!";
                message[5] = "* Will you two put a lid on it?";
                message[6] = "* Ahm.";
                message[7] = "* Anyway.";
                message[8] = "* The name's Rephil.";
                message[9] = "* I'm the boss of the#  world-renowned gang, The#  Shufflers.";
                message[10] = "* We rule this town.";
                message[11] = "* If you wanna pass, you're gonna#  have to go through us!";
                talker[0] = toast;
                talker[1] = swig;
                talker[2] = rephil;
                talker[3] = swig;
                talker[4] = toast;
                talker[5] = rephil;
            }
            
            if (global.dialogue_open == false)
                scene++;
            
            break;
        
        case 9:
            global.sound_carry_overworld = true;
            global.battle_enemy_name = "shufflers";
            global.exclamation_mark_type = "nothing";
            global.battling_enemy = false;
            global.battling_boss = true;
            global.battle_start = true;
            global.current_room_overworld = room_get_name(room);
            instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
            scene++;
            break;
    }
}
else if (global.snowdin_flag[8] == 1)
{
    switch (scene)
    {
        case 0:
            scr_radio_fade(0, 0);
            
            if (timer < 0)
                timer--;
            else
                scene++;
            
            break;
        
        case 1:
            scr_text();
            
            with (msg)
            {
                portrait = false;
                talker[0] = rephil;
                message[0] = "* Geez.";
                message[1] = "* We Shufflers prefer to settle#  things in a more dignified#  manner.";
                message[2] = "* Ya catch my drift?";
                message[3] = "* We would like to propose a#  challenge.";
                message[4] = "* A game of sorts.";
            }
            
            scene++;
            break;
        
        case 2:
            if (!instance_exists(obj_dialogue))
            {
                obj_snowdin_13_ball.active = true;
                audio_play_sound(snd_slide_whistle, 20, 0);
                scene++;
            }
            
            break;
        
        case 3:
            if (obj_snowdin_13_ball.ball_arrived == 1)
            {
                obj_snowdin_13_ball.ball_arrived = 0;
                scene++;
            }
            
            break;
        
        case 4:
            scr_text();
            
            with (msg)
            {
                portrait = false;
                talker[0] = rephil;
                message[0] = "* We'll take this ball 'ere, and#  hide it under one of us.";
                message[1] = "* Next, we'll shuffle around.";
                message[2] = "* When we finish, you'll have to#  guess who has the ball.";
                message[3] = "* We'll do this three times in a#  row.";
                message[4] = "* You win?";
                message[5] = "* You can pass.";
                message[6] = "* You lose?";
                message[7] = "* We'll sit here blockin' ya for#  all eternity.";
            }
            
            scene++;
            break;
        
        case 5:
            if (!instance_exists(obj_dialogue))
            {
                obj_snowdin_13_ball.active = 3;
                audio_play_sound(snd_slide_whistle_reversed, 20, 0);
                scene++;
            }
            
            break;
        
        case 6:
            if (obj_snowdin_13_ball.ball_arrived == 1)
            {
                instance_destroy(obj_snowdin_13_ball);
                scene++;
            }
            
            break;
        
        case 7:
            scr_text();
            
            with (msg)
            {
                portrait = false;
                ch[1] = "Yes";
                ch[2] = "No";
                ch_msg = 0;
                talker[0] = rephil;
                message[0] = "* Ya pickin' up what I'm puttin'#  down?";
                message[1] = "* That makes things easy, then.";
                message[2] = "* Here we go!";
                
                if (outcome == 1)
                {
                    talker[1] = rephil;
                    message[1] = "* That makes things easy, then.";
                    message[2] = "* Here we go!";
                    other.scene = 11;
                }
                
                if (outcome == 2)
                {
                    instance_destroy();
                    global.dialogue_open = false;
                    other.scene = 8;
                }
            }
            
            break;
        
        case 8:
            scr_text();
            
            with (msg)
            {
                message[0] = "* No?";
                message[1] = "* Well ain't you just some#  unwanted coffee dregs.";
                message[2] = "* Yeah, dregs.";
                message[3] = "* Now, now. If ya don't get#  somethin', ya don't get it.";
                message[4] = "* It ain't the kid's fault.";
                message[5] = "* Tell ya what. Give that head of#  yours a nice break.";
                message[6] = "* Mull over the rules. Make sure#  ya get 'em good an' proper.";
                message[7] = "* Until then, the Shufflers'll be#  on path blockin' duty.";
                message[8] = "* Ain't that right boys?";
                message[9] = "* Yeah boss. Duty!";
                talker[0] = rephil;
                talker[1] = swig;
                talker[2] = toast;
                talker[3] = rephil;
                talker[9] = toast;
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 9:
            if (!instance_exists(obj_dialogue))
            {
                scr_audio_fade(mus_occupied_turf_yellow, 1000);
                shufflers_turn_away = true;
                
                if (timer > 0)
                    timer--;
                else
                    scene++;
            }
            
            break;
        
        case 10:
            scr_cutscene_end();
            scr_radio_fade(1, 500);
            audio_stop_sound(mus_occupied_turf_yellow);
            global.snowdin_flag[8] = 2;
            scene = 0;
            break;
        
        case 11:
            if (!instance_exists(obj_dialogue))
            {
                shufflers_puzzle = true;
                timer = 0;
                scene = 0;
                global.snowdin_flag[8] = 3;
            }
            
            break;
    }
}

if ((global.snowdin_flag[8] == 2 || global.snowdin_flag[8] == 3) && !failure)
{
    switch (scene)
    {
        case 1:
            scr_cutscene_start();
            scr_radio_fade(0, 500);
            shufflers_turn = true;
            scene++;
            break;
        
        case 2:
            with (rephil)
            {
                if (on_animation_end())
                {
                    sprite_index = spr_rephil_overworld_yellow;
                    image_speed = 0;
                    other.scene += 1;
                }
            }
            
            break;
        
        case 3:
            scr_text();
            
            with (msg)
            {
                if (global.snowdin_flag[8] == 2)
                {
                    portrait = false;
                    ch[1] = "Yes";
                    ch[2] = "No";
                    ch_msg = 2;
                    talker[0] = rephil;
                    message[0] = "* 'Ey, look who's back!";
                    message[1] = "* That's the type of stand-up kid#  I like to see.";
                    message[2] = "* You ready to play?";
                    
                    if (outcome == 1)
                    {
                        color_noloop = false;
                        message[3] = "* That makes things easy, then.";
                        message[4] = "* Here we go!";
                        other.scene = 6;
                    }
                    
                    if (outcome == 2)
                    {
                        color_noloop = false;
                        message[3] = "* Fine then.";
                        timer = 45;
                        other.scene = 4;
                    }
                }
                else
                {
                    portrait = false;
                    talker[0] = rephil;
                    message[0] = "* Think you can pass this time?#  Let's find out!";
                    other.scene = 6;
                }
            }
            
            break;
        
        case 4:
            if (!instance_exists(obj_dialogue))
            {
                scr_audio_fade(mus_occupied_turf_yellow, 1000);
                shufflers_turn_away = true;
                
                if (timer > 0)
                    timer--;
                else
                    scene++;
            }
            
            break;
        
        case 5:
            audio_stop_sound(mus_occupied_turf_yellow);
            
            with (obj_radio)
                audio_sound_gain(bgm, 1, 500);
            
            scr_cutscene_end();
            break;
        
        case 6:
            if (!instance_exists(obj_dialogue))
            {
                shufflers_puzzle = true;
                global.snowdin_flag[8] = 3;
                timer = 0;
                scene = 0;
            }
            
            break;
    }
}

if (shufflers_puzzle == true)
    cts_shufflers_puzzle();

if (failure && !shufflers_puzzle)
{
    if (shufflers_failsafe < 6)
    {
        if (scene == 0)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = rephil;
                message[0] = "* Well, ain't that a pity.";
                message[1] = "* Why don't you take a while an'#  come back when you're ready to#  try again?";
                message[2] = "* Take some time to practice by#  yourself if ya can.";
                message[3] = "* Maybe then you'll be a bit more#  of a challenge.";
                message[4] = "* Until then, we ain't movin'.#  Right boys?";
                message[5] = "* Yeah boss, we'll stay right#  'ere.";
                talker[5] = swig;
                message[6] = "* Yeah. We ain't got anywhere#  better to go.";
                talker[6] = toast;
            }
            
            if (global.dialogue_open == false)
            {
                shufflers_turn_away = true;
                timer = 60;
                scene++;
            }
        }
        
        if (scene == 1)
        {
            if (timer > 0)
            {
                timer--;
            }
            else
            {
                scr_radio_fade(1, 500);
                scr_cutscene_end();
                failure = false;
                scene = 0;
            }
        }
    }
    else
    {
        scr_text();
        
        with (msg)
        {
            talker[0] = rephil;
            message[0] = "* Uhh, hey there, kid.";
            message[1] = "* We've been at this a while, ya#  know?";
            message[2] = "* Ain't you gettin' tired of this?";
            message[3] = "* Even we're gettin' pretty tired.";
            message[4] = "* We don't usually have this much#  exercise.";
            message[5] = "* See, we don't get many#  customers tryin' to come#  through.";
            message[6] = "* They must have heard how#  intimidatin' we can be, right#  boys?";
            talker[7] = swig;
            message[7] = "* Yeah, boss!";
            message[8] = "* Ain't nobody messin' with us!";
            talker[9] = toast;
            message[9] = "* Yeah, boss!";
            message[10] = "* Mess!";
            talker[11] = rephil;
            message[11] = "* Tell ya what, kid.";
            message[12] = "* Challengin' us again an' again,";
            message[13] = "* Failin' over an' over,";
            message[14] = "* 'Specially when you're so#  clearly outmatched,";
            message[15] = "* Takes a lot outta ya.";
            message[16] = "* You gotta have a ton of#  perseverance to pull that off.";
            message[17] = "* That, or you're one of the#  stupidest monsters I ever met.";
            message[18] = "* Either way, I think you've#  earned your way through.";
            message[19] = "* Come on, boys.";
        }
        
        if (global.dialogue_open == false)
        {
            global.snowdin_flag[8] = 4;
            failure = false;
            scene = 1;
        }
    }
}

if (global.snowdin_flag[8] == 4)
{
    switch (scene)
    {
        case 0:
            scr_text();
            
            with (msg)
            {
                message[0] = "* Boss, I think the little punk#  beat us.";
                message[1] = "* That must've been a lucky#  guess!";
                message[2] = "* There's no way a glass of#  spoiled milk like you could#  beat us!";
                message[3] = "* Now, now, Toast. Let's simmer#  down.";
                message[4] = "* There ain't nothing to get#  heated over.";
                message[5] = "* The kid beat us fair n' square.";
                message[6] = "* The Shufflers ain't nothing if#  not true to their word.";
                message[7] = "* Ain't that right?";
                message[8] = "* Yeah boss, a Shuffler always#  keeps their word.";
                message[9] = "* Yeah, always.";
                message[10] = "* Now, kid, we'll let you pass on#  through.";
                message[11] = "* You've earned ya self a#  powerful friend in the#  Shufflers today.";
                message[12] = "* All ya gotta do is remember the#  name,";
                message[13] = "* An' we'll be on ya side if ya#  ever need us.";
                message[14] = "* The Shufflers always protect a#  friend, right boys?";
                message[15] = "* Yeah, you got a problem, we can#  handle it.";
                message[16] = "* Yeah, handle.";
                talker[0] = toast;
                talker[1] = swig;
                talker[3] = rephil;
                talker[8] = swig;
                talker[9] = toast;
                talker[10] = rephil;
                talker[15] = swig;
                talker[16] = toast;
            }
            
            if (global.dialogue_open == false)
                scene++;
            
            break;
        
        case 1:
            if (instance_exists(obj_dialogue))
                break;
            
            scr_audio_fade(mus_occupied_turf_yellow, 500);
            
            with (rephil)
            {
                if (y > 170)
                {
                    y -= 1.5;
                }
                else if (x > 120)
                {
                    x -= 1.5;
                }
                else
                {
                    other.scene++;
                    other.timer = 15;
                }
            }
            
            with (toast)
            {
                if (x < 200)
                    x += 1;
            }
            
            with (swig)
            {
                if (x > 120)
                    x -= 1;
            }
            
            break;
        
        case 2:
            if (timer > 0)
            {
                timer--;
            }
            else
            {
                global.snowdin_flag[8] = 5;
                scr_radio_fade(1, 500);
                scr_cutscene_end();
                scene = 0;
            }
            
            break;
    }
}

if (shufflers_turn_away)
{
    shufflers_turn_away = false;
    
    with (rephil)
    {
        sprite_index = spr_rephil_turn_away;
        image_speed = 0.2;
    }
    
    with (swig)
    {
        sprite_index = spr_swig_turn_away;
        image_speed = 0.2;
    }
    
    with (toast)
    {
        sprite_index = spr_toast_turn_away;
        image_speed = 0.2;
    }
}

if (shufflers_turn)
{
    shufflers_turn = false;
    
    with (rephil)
    {
        sprite_index = spr_rephil_turn_overworld_yellow;
        image_index = 0;
        image_speed = 0.2;
    }
    
    with (swig)
    {
        sprite_index = spr_swig_turn_overworld_yellow;
        image_index = 0;
        image_speed = 0.2;
    }
    
    with (toast)
    {
        sprite_index = spr_toast_turn_overworld_yellow;
        image_index = 0;
        image_speed = 0.2;
    }
}

if (instance_exists(obj_dialogue))
{
    with (obj_dialogue)
    {
        if (!variable_instance_exists(id, "color_noloop"))
            color_noloop = false;
        
        color = true;
        col_modif[0] = toast_col;
        col_modif[1] = swig_col;
        col_modif[2] = rephil_col;
        var new_col = 2;
        
        if (!color_noloop)
        {
            for (var i = 0; i < array_length(message); i++)
            {
                if (is_array(talker))
                {
                    var talker_current = talker[clamp(i, 0, array_length(talker) - 1)];
                    
                    if (talker_current != -4 || other.shufflers_puzzle == true)
                    {
                        if (talker_current == rephil || other.shufflers_puzzle == true)
                            new_col = 2;
                        
                        if (talker_current == swig)
                            new_col = 1;
                        
                        if (talker_current == toast)
                            new_col = 0;
                        
                        message_col[i][0] = "";
                        message_col[i][1] = "";
                        message_col[i][2] = "";
                        message_col[i][new_col] = message[i];
                    }
                }
            }
            
            color_noloop = true;
        }
    }
}
