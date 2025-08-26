if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
    scene = 1;

if (scene == 1)
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (It's an empty swing.)";
        message[1] = "* (Hop on?)";
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            other.npc_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            
            with (other.npc_clover)
            {
                x_dest[0] = 247;
                y_dest[0] = 145;
                can_walk = true;
                depth = 0;
            }
            
            scr_cutscene_start();
            other.scene = 2;
        }
        
        if (outcome == 2)
        {
            other.scene = 0;
            global.dialogue_open = false;
        }
    }
}

if (scene == 2)
{
    if (npc_clover.npc_arrived == true)
    {
        npc_clover.action_sprite = true;
        npc_clover.sprite_index = spr_pl_run_down;
        npc_clover.image_index = 1;
        npc_clover.image_speed = 0;
        
        with (npc_clover)
            path_start(pt_clover_jump_swing, 1, path_action_stop, false);
        
        audio_play_sound(snd_playerjump, 1, 0);
        scene = 3;
    }
}

if (scene > 3 && scene <= 5)
    npc_clover.depth = -1000;

if (scene == 3)
{
    with (npc_clover)
    {
        if (path_position >= 0.5)
            depth = -1000;
        
        if (path_position == 1)
        {
            sprite_index = spr_pl_up;
            image_index = 0;
            image_angle = 270;
            audio_sound_gain(obj_radio.current_song, 0, 800);
            other.scene++;
        }
    }
}

if (scene == 4)
{
    if (keyboard_multicheck_pressed(vk_nokey) || keyboard_multicheck_pressed(vk_nokey))
    {
        scene++;
        npc_clover.sprite_index = spr_pl_run_down;
        npc_clover.image_index = 1;
        npc_clover.image_speed = 0;
        
        with (npc_clover)
            path_start(pt_clover_jump_off_swing, 1, path_action_stop, false);
        
        audio_play_sound(snd_playerjump, 1, 0);
    }
}

if (scene == 5)
{
    if (npc_clover.path_position == 1)
    {
        obj_pl.image_alpha = 1;
        instance_destroy(npc_clover);
        audio_sound_gain(obj_radio.current_song, 1, 800);
        timer = 15;
        scene++;
    }
}

if (scene == 6)
{
    if (scr_timer())
    {
        scr_cutscene_end();
        scene = 0;
    }
}
