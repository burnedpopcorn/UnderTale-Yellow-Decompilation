var release_speed;

if (image_alpha < 1)
    image_alpha += 0.2;

switch (scene)
{
    case 0:
        speed = -2.5;
        target_dir = point_direction(x, y, obj_pl.x, obj_pl.y);
        direction = target_dir;
        image_angle = direction;
        
        if (cutscene_wait(1))
            audio_play_sound(snd_undertale_swoosh, 1, 0);
        
        break;
    
    case 1:
        release_speed = speed_max;
        speed = lerp(speed, release_speed, 0.5);
        break;
}

if (place_meeting(x, y, obj_pl))
{
    instance_destroy(obj_flowey_world_spear_spawner);
    speed = 0;
    
    if (!alarm[1])
        alarm[1] = 30;
    
    if (!instance_exists(obj_flowey_world_clover_dead))
        instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_flowey_world_clover_dead);
}
