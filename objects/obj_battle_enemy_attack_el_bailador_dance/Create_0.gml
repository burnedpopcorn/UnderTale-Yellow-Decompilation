var random_pose;

state = 0;
default_x = x;
default_xscale = 1;
default_yscale = 1;
id_el_bailador = 2245;
global.id_store = id;

with (id_el_bailador)
{
    image_alpha = 0;
    time_elapsed = 0;
    sign_modifier = 1;
    id_el_bailador_dance = global.id_store;
}

direction_x = choose(-1, 1);

if (direction_x == -1)
{
    random_pose = irandom_range(0, 1);
    
    switch (random_pose)
    {
        case 0:
            sprite_index = spr_el_bailador_pose_left_1;
            image_speed_dance = 1/3;
            break;
        
        case 1:
            sprite_index = spr_el_bailador_pose_left_2;
            image_speed_dance = 1/3;
            break;
        
        default:
            sprite_index = spr_el_bailador_pose_left_1;
            image_speed_dance = 1/3;
            break;
    }
}

if (direction_x == 1)
{
    random_pose = irandom_range(0, 2);
    
    switch (random_pose)
    {
        case 0:
            sprite_index = spr_el_bailador_pose_right_1;
            image_speed_dance = 1/3;
            break;
        
        case 1:
            sprite_index = spr_el_bailador_pose_right_2;
            image_speed_dance = 1/3;
            break;
        
        case 2:
            sprite_index = spr_el_bailador_pose_right_3;
            image_speed_dance = 1/3;
            break;
        
        default:
            sprite_index = spr_el_bailador_pose_right_1;
            image_speed_dance = 1/3;
            break;
    }
}

image_speed = image_speed_dance;
image_index = 0;
image_xscale = 1;
image_yscale = 1;
sign_modifier_move = direction_x;
time_elapsed_move = 0;
time_max_move = 30;
time_increase_move = 1;
max_rise_move = 150;
time_max_dance = 20;
sign_modifier = 1;
time_elapsed = 0;
time_max = time_max_dance;
time_increase = 1;
max_rise = 0.025;
max_rise_ext = 0.02;
time_max_default = time_max;
