var rephil, toast, swig;

rephil = 1434;
toast = 1437;
swig = 1435;

if (global.geno_complete[2] || global.player_can_travel || global.snowdin_flag[8] == 6)
{
    instance_destroy(rephil);
    instance_destroy(toast);
    instance_destroy(swig);
    global.snowdin_flag[8] = 6;
}

scene = 0;
timer = 0;

if (global.snowdin_flag[8] == 1)
{
    timer = 15;
    scr_cutscene_start();
    
    with (rephil)
    {
        y = 200;
        sprite_index = spr_rephil_overworld_yellow;
    }
    
    with (toast)
    {
        x = 190;
        y = 200;
        sprite_index = spr_toast_overworld_yellow;
    }
    
    with (swig)
    {
        x = 130;
        y = 200;
        sprite_index = spr_swig_overworld_yellow;
    }
}

if (global.snowdin_flag[8] == 2 || global.snowdin_flag[8] == 3)
{
    with (rephil)
    {
        y = 200;
        sprite_index = spr_rephil_turn_overworld_yellow;
    }
    
    with (toast)
    {
        x = 190;
        y = 200;
        sprite_index = spr_toast_turn_overworld_yellow;
    }
    
    with (swig)
    {
        x = 130;
        y = 200;
        sprite_index = spr_swig_turn_overworld_yellow;
    }
}

shufflers_turn = false;
shufflers_turn_away = false;
shufflers_failsafe = 0;
shufflers_round = 1;
shufflers_puzzle = false;
shufflers_select = false;
shufflers_win = false;
shuffle_music = 159;
failure = false;
