if (place_meeting(x, y, obj_pl))
{
    base_x = obj_pl.x;
    base_y = obj_pl.bbox_bottom;
    slide_speed = 4;
}

var dir = point_direction(base_x, base_y, x, y);

if (place_free(x + lengthdir_x(slide_speed, dir), y))
    x += lengthdir_x(slide_speed, dir);

if (place_free(x, y + lengthdir_y(slide_speed, dir)))
    y += lengthdir_y(slide_speed, dir);

if (slide_speed > 0)
    slide_speed -= 0.4;

if (distance_to_object(obj_miner_bryan) < 10)
{
    instance_destroy();
    
    with (obj_miner_bryan)
    {
        sprite_index = spr_miner_bryan_helmet;
        image_speed = 0.3;
        global.dunes_flag[7] = 1;
    }
    
    scr_cutscene_start();
}
