var tile, i;

depth = -y;
image_speed = 0;
cutscene_timer = 0;
scene = 0;

if (global.sworks_flag[1] >= 4)
{
    image_index = 12;
    
    if (global.route == 3 && global.sworks_flag[1] == 4)
    {
        global.cutscene = true;
        scene = 17;
        obj_pl.x = 663;
        obj_pl.y = 169;
    }
    
    exit;
}

tile = tile_get_ids_at_depth(1000006);

for (i = 0; i < array_length_1d(tile); i++)
    tile_set_alpha(tile[i], 0);

tile_alpha = 0;
