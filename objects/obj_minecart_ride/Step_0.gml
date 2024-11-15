var scroll_speed_current, num, i, tile, tile_y, tile_x, tile_width, tile_shift;

scroll_speed_current = ceil(scroll_speed);
num = tile_get_count();

for (i = 0; i < num; i++)
{
    tile = tile_get_id(i);
    tile_y = tile_get_y(tile);
    tile_x = tile_get_x(tile);
    tile_width = tile_get_width(tile);
    
    switch (tile_get_depth(tile))
    {
        case 1000000:
            tile_shift = scroll_speed;
            break;
    }
    
    tile_set_position(tile, tile_x + tile_shift, tile_y);
    tile_x = tile_get_x(tile);
    
    if (scroll_speed < 0)
    {
        if (tile_x <= -20)
            tile_set_position(tile, room_width, tile_y);
    }
    else if (tile_x >= room_width)
    {
        tile_set_position(tile, -20, tile_y);
    }
}

if ((scroll_speed < 0 && wall_x > -sprite_get_width(spr_gemwall)) || (scroll_speed > 0 && wall_x < sprite_get_width(spr_gemwall)))
    wall_x += (scroll_speed * 0.5);
else
    wall_x = 0;
