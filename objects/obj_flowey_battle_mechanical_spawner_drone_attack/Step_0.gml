var xx, yy, bullet;

if (live_call())
    return global.live_result;

if (!instance_exists(spawner))
{
    instance_destroy();
    exit;
}

switch (scene)
{
    case 0:
        fire_sound = audio_play_sound(snd_f_mechpellet, 1, 0);
        audio_sound_gain(fire_sound, 0.5, 0);
        xx = spawner.x;
        yy = spawner.y;
        bullet = instance_create_depth(xx, yy, -100, obj_flowey_battle_phase_2_mechanical_pellet);
        bullet.direction = spawn_dir_current;
        bullet.image_angle = bullet.direction;
        bullet.speed = 12;
        spawn_dir_current += spawn_dir_inc;
        cutscene_advance();
        break;
    
    case 1:
        if (cutscene_wait(bullet_delay / 30))
        {
            if (bullet_count > 0)
            {
                cutscene_advance(0);
                bullet_count--;
            }
            else
            {
                instance_destroy();
            }
        }
        
        break;
}
