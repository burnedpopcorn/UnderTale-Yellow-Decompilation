var i, layer_width, j;

if (live_call())
    return global.live_result;

for (i = 0; i < array_length(parallax_layer); i++)
{
    layer_width = sprite_get_width(parallax_layer[i]);
    j = -3 * layer_width;
    
    while (j < (6 * layer_width))
    {
        draw_sprite(parallax_layer[i], 0, parallax_x[i] + j, parallax_y[i]);
        j += layer_width;
    }
}
