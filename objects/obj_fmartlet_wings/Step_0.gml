if (live_call())
    return global.live_result;

var target_direction = 270 + (30 * image_xscale);
var battle_box = obj_dialogue_box_battle_transformation_any;

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
    var spawn_line_length = 110;
    var spawn_angle = 90 - (70 * image_xscale);
    var spawn_length_inc = spawn_line_length / feather_count;
    var spawn_dist_current = 0;
    var dir_inc = feather_spread / feather_count;
    var start_dir = target_direction - (feather_spread * 0.5);
    var tar_dir = target_direction + (feather_spread * 0.5);
    
    if (image_xscale == 1)
    {
        for (var i = start_dir; i < tar_dir; i += dir_inc)
        {
            var xx = lengthdir_x(spawn_dist_current, spawn_angle);
            var yy = lengthdir_y(spawn_dist_current, spawn_angle);
            spawn_dist_current += spawn_length_inc;
            var feather = instance_create_depth(x + xx, y + yy, depth + 1, obj_martlet_attack_wing_feather);
            feather.direction = i;
        }
    }
    else
    {
        for (var i = tar_dir; i > start_dir; i -= dir_inc)
        {
            var xx = lengthdir_x(spawn_dist_current, spawn_angle);
            var yy = lengthdir_y(spawn_dist_current, spawn_angle);
            spawn_dist_current += spawn_length_inc;
            var feather = instance_create_depth(x + xx, y + yy, depth + 1, obj_martlet_attack_wing_feather);
            feather.direction = i;
        }
    }
    
    spawn_feathers = false;
}
