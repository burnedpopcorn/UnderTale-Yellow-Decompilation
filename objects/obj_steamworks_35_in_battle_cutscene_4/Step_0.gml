var target_x;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(0.75);
        break;
    
    case 1:
        obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight = true;
        scene++;
        break;
    
    case 2:
        if (obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight == false)
            cutscene_advance();
        
        break;
    
    case 3:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Of course!";
            message[1] = "* Hey Axis!";
            prt[0] = 372;
            prt[1] = 374;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        
        with (instance_create(0, 0, obj_quote_battle_axis_pacifist_cutscenes))
        {
            message[0] = "WHAT.";
            message_end = 0;
        }
        
        cutscene_advance();
        break;
    
    case 6:
        if (instance_exists(obj_quote_battle_axis_pacifist_cutscenes))
            exit;
        
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* How do you feel about#  second dates?";
            prt[0] = 374;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 7:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        
        with (instance_create(0, 0, obj_quote_battle_axis_pacifist_cutscenes))
        {
            message[0] = "LIKE A#CALENDAR?";
            message_end = 0;
        }
        
        cutscene_advance();
        break;
    
    case 8:
        if (instance_exists(obj_quote_battle_axis_pacifist_cutscenes))
            exit;
        
        instance_create(-200, obj_axis_body.y - 15, obj_robot_build_finished_robot);
        cutscene_advance();
        break;
    
    case 9:
        cutscene_sfx_play(309, 1);
        break;
    
    case 10:
        target_x = 40;
        obj_robot_build_finished_robot.x = lerp(obj_robot_build_finished_robot.x, target_x, 0.15);
        
        if (abs(obj_robot_build_finished_robot.x - target_x) < 0.1)
        {
            obj_robot_build_finished_robot.x = target_x;
            scene++;
        }
        
        break;
    
    case 11:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        
        with (instance_create(0, 0, obj_quote_battle_axis_pacifist_cutscenes))
        {
            message[0] = "I...";
            message[1] = "WHAT IS THIS?";
            message[2] = "THIS FEELING?";
            message_end = 2;
        }
        
        cutscene_advance();
        break;
    
    case 12:
        if (instance_exists(obj_quote_battle_axis_pacifist_cutscenes))
            exit;
        
        instance_create_depth(obj_axis_body.x, obj_axis_body.y, obj_axis_body.depth - 1, obj_axis_heart);
        obj_axis_body.sprite_index = spr_axis_body_charge;
        obj_axis_body.image_speed = 0;
        obj_axis_body.image_index = 2;
        axis_shake_intensity = 5;
        audio_play_sound(snd_kamehamehacharge, 1, 0);
        scene++;
        break;
    
    case 13:
        cutscene_wait(1);
        break;
    
    case 14:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Uh oh!";
            prt[0] = 381;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 15:
        draw_alpha += 0.15;
        
        if (draw_alpha >= 1)
            cutscene_advance();
        
        break;
    
    case 16:
        cutscene_wait(2.5);
        obj_axis_body.sprite_index = spr_axis_love;
        obj_axis_body.image_speed = 1;
        obj_axis_body.image_angle = 0;
        break;
    
    case 17:
        cutscene_music_start(3);
        break;
    
    case 18:
        draw_alpha -= 0.05;
        
        if (draw_alpha <= 0)
            cutscene_advance();
        
        break;
    
    case 19:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        
        with (instance_create(0, 0, obj_quote_battle_axis_pacifist_cutscenes))
        {
            message[0] = "SOULMATE LOCATED.";
            message[1] = "PERFECTION#PERSONIFIED.";
            message[2] = "WHERE HAS THIS#BEAUTY BEEN ALL#MY LIFE?";
            message_end = 2;
        }
        
        cutscene_advance();
        break;
    
    case 20:
        if (instance_exists(obj_quote_battle_axis_pacifist_cutscenes))
            exit;
        
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Holy...";
            prt[0] = 393;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 21:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        
        with (instance_create(0, 0, obj_quote_battle_axis_pacifist_cutscenes))
        {
            message[0] = "THE SHIMMER.#THE COMPLEXION.";
            message[1] = "THE...#C U R V E S";
            message_end = 1;
        }
        
        cutscene_advance();
        break;
    
    case 22:
        if (instance_exists(obj_quote_battle_axis_pacifist_cutscenes))
            exit;
        
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* OKAY that's enough!";
            message[1] = "* Clover, let's uh...#  let's wrap this up.";
            prt[0] = 381;
            prt[1] = 3754;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 23:
        scr_audio_fade_out(cutscene_music, 200);
        global.enemy_sparing = true;
        
        if (!instance_exists(obj_battle_fade_out_screen))
        {
            audio_play_sound(snd_monster_damage_death, 1, 0);
            instance_create(0, 0, obj_battle_justice_effect);
            instance_create_depth(0, 0, -2000, obj_battle_fade_out_screen);
        }
        
        instance_destroy();
        break;
}

if (scene == 13)
    axis_shake_intensity += 0.03;

if (scene >= 13 && scene <= 15)
    obj_axis_body.image_angle = 0 + random_range(-axis_shake_intensity, axis_shake_intensity);

if (scene > 0)
{
    with (obj_heart_battle_fighting_axis)
    {
        if (image_alpha > 0)
            image_alpha -= 0.1;
    }
    
    with (obj_battle_enemy_attack_axis_shield)
    {
        if (image_alpha > 0)
            image_alpha -= 0.1;
    }
}
