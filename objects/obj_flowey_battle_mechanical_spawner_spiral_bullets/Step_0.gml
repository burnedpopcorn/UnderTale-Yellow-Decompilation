var xx, yy, i, bullet;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        xx = 320;
        yy = 160;
        fire_sound = audio_play_sound(snd_f_mechpellet, 1, 0);
        audio_sound_gain(fire_sound, 0.5, 0);
        
        for (i = 0; i < bullet_count; i++)
        {
            bullet = instance_create_depth(xx, yy, -100, obj_flowey_battle_phase_2_mechanical_pellet);
            bullet.direction = spawn_dir + (spawn_dir_inc * i);
            bullet.image_angle = bullet.direction;
            bullet.speed = 12;
        }
        
        spawn_dir += spawn_dir_wave_inc;
        
        if (spawn_dir > 360)
            spawn_dir -= 360;
        
        cutscene_advance();
        break;
    
    case 1:
        if (cutscene_wait(bullet_delay / 30))
        {
            if (wave_count > 0)
            {
                cutscene_advance(0);
                wave_count--;
            }
            else
            {
                instance_destroy();
            }
        }
        
        break;
}
