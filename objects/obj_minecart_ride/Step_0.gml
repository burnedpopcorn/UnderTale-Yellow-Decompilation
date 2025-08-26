var scroll_speed_current = ceil(scroll_speed);
var num = tile_get_count();

for (var i = 0; i < num; i++)
{
    var tile = tile_get_id(i);
    var tile_y = tile_get_y(tile);
    var tile_x = tile_get_x(tile);
    var tile_width = tile_get_width(tile);
    var tile_shift;
    
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
