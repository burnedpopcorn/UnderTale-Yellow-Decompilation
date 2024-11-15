var target_direction, battle_box, spawn_line_length, spawn_angle, spawn_length_inc, spawn_dist_current, dir_inc, start_dir, tar_dir, i, xx, yy, feather;

if (live_call())
    return global.live_result;

target_direction = 270 + (30 * image_xscale);
battle_box = 3154;

switch (scene)
{
    case 0:
        if (image_index >= 2)
            scene = 1;
        
        break;
    
    case 1:
        spawn_feathers = true;
        scene += 1;
        break;
    
    case 2:
        if (image_index >= (image_number - 1))
            scene++;
        
        break;
    
    case 3:
        if (vspeed < 9)
            vspeed += 1.5;
        
        if (bbox_top > (battle_box.bbox_top + 4))
            surface_draw = true;
        
        break;
}

if (hp_self <= 0)
{
    surface_draw = true;
    
    if (x < 320)
        hspeed -= 1;
    else
        hspeed += 1;
    
    if (!place_meeting(x, y, battle_box))
        instance_destroy();
}

if ((y + vspeed) < ystart)
    vspeed = 0;

if (spawn_feathers && feather_count > 0)
{
    spawn_line_length = 110;
    spawn_angle = 90 - (70 * image_xscale);
    spawn_length_inc = spawn_line_length / feather_count;
    spawn_dist_current = 0;
    dir_inc = feather_spread / feather_count;
    start_dir = target_direction - (feather_spread * 0.5);
    tar_dir = target_direction + (feather_spread * 0.5);
    
    if (image_xscale == 1)
    {
        for (i = start_dir; i < tar_dir; i += dir_inc)
        {
            xx = lengthdir_x(spawn_dist_current, spawn_angle);
            yy = lengthdir_y(spawn_dist_current, spawn_angle);
            spawn_dist_current += spawn_length_inc;
            feather = instance_create_depth(x + xx, y + yy, depth + 1, obj_martlet_attack_wing_feather);
            feather.direction = i;
        }
    }
    else
    {
        for (i = tar_dir; i > start_dir; i -= dir_inc)
        {
            xx = lengthdir_x(spawn_dist_current, spawn_angle);
            yy = lengthdir_y(spawn_dist_current, spawn_angle);
            spawn_dist_current += spawn_length_inc;
            feather = instance_create_depth(x + xx, y + yy, depth + 1, obj_martlet_attack_wing_feather);
            feather.direction = i;
        }
    }
    
    spawn_feathers = false;
}
