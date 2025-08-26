var layer_scroll_speed;
layer_scroll_speed[0] = 0.1;
layer_scroll_speed[1] = 0.2;
layer_scroll_speed[2] = 0.3;
layer_scroll_speed[3] = 0.4;
layer_scroll_speed[4] = 0.7;
layer_scroll_speed[5] = 3;

for (var i = 0; i < 6; i++)
    __background_set(e__BG.X, i, __background_get(UnknownEnum.Value_3, i) - layer_scroll_speed[i]);

if (bg_image_index < 5)
    bg_image_index += 0.1;
else
    bg_image_index = 1;

__background_set(e__BG.Index, 1, asset_get_index("hotland_background_" + string(floor(bg_image_index))));
