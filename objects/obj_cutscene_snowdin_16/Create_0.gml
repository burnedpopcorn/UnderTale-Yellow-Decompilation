if (global.snowdin_flag[17] > 0 || global.geno_complete[2] == true)
{
    instance_create(obj_martlet_snowdin_16.x + 13, obj_martlet_snowdin_16.y, obj_martlet_bridge_note);
    instance_destroy(obj_martlet_snowdin_16);
    instance_destroy();
    global.snowdin_flag[17] = 1;
    exit;
}

audio_sound_gain(snd_snowdin_bridge, 0, 0);
audio_sound_gain(mus_ambient_river, 0.2, 0);

if (instance_exists(obj_transition))
{
    obj_transition.fade_in_speed = 0.025;
    obj_transition.fade_out_speed = 0.025;
}

scr_cutscene_start();
scene = 0;
timer = 10;
actor_martlet = 1493;
