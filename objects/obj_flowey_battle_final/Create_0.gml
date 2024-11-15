var i;

if (live_call())
    return global.live_result;

global.battle_enemy_name = "flowey2";
scr_generate_battle_flowey_phase_2();

if (!variable_global_exists("flowey_phase_2_noloop"))
    global.flowey_phase_2_noloop = false;

intro_noloop = false;
scene = 0;
cutscene_timer = 0;
draw_alpha = 0;
white_alpha = 0;
clover_alpha = 1;
clover_offset_x = 0;
clover_offset_y = 0;
clover_shake_strength = 0;
soul_overlay_alpha = 0;
obj_heart_battle_fighting_yellow_final.image_alpha = 0;
timestamp_current = 0;
timestamp = [7.36, 9.7, 10.84, 12.94, 15.6, 17.45];
timestamp_image_index = [0, 1, 2, 1, 2, 0];
intro_song = audio_play_sound(mus_crescendo_of_dread, 1, 0);
image_speed = 0;
switch_timer = 25;
stage_switch = -1;
stage_current = 0;
sprite_flowey[0] = spr_battle_flowey_gray_idle;
sprite_flowey[1] = spr_battle_flowey_mechanical_idle;
sprite_flowey[2] = spr_battle_flowey_lowpoly_flowey;
sprite_flowey[3] = spr_battle_flowey_paper_flowey;
sprite_flowey[4] = spr_battle_flowey_clay_flowey;
sprite_flowey[5] = spr_battle_flowey_organic_flowey;
sprite_flowey[6] = spr_battle_flowey_yarn_flowey;
music_flowey[0] = 171;
music_flowey[1] = 585;
music_flowey[2] = 637;
music_flowey[3] = 22;
music_flowey[4] = 527;
music_flowey[5] = 51;
music_flowey[6] = 599;
controller_flowey[0] = 56;
controller_flowey[1] = 659;
controller_flowey[2] = 707;
controller_flowey[3] = 1709;
controller_flowey[4] = 2938;
controller_flowey[5] = 986;
controller_flowey[6] = 446;
petal_alive = [1, 1, 1, 1, 1, 1];
petal_count = 6;
hp_bar_alpha = 0;

if (global.flowey_phase_2_noloop == true)
{
    obj_heart_battle_fighting_yellow_final.image_alpha = 1;
    clover_alpha = 0;
    scene = 8;
    audio_stop_sound(intro_song);
    
    if (file_exists("tempsave.sav"))
    {
        ini_open("tempsave.sav");
        
        for (i = 0; i < array_length(petal_alive); i++)
            petal_alive[i] = ini_read_real("petal", string(i), 1);
        
        petal_count = ini_read_real("petal", "count", 6);
        ini_close();
    }
    
    if (petal_count < 6)
        switch_timer = 20;
}

global.current_hp_self = 100;
global.max_hp_self = 100;
