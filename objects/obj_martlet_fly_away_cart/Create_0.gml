image_speed = 1/3;
scr_load_palette_shader(0);
palette_index = 0;
palette_index = 0;

if (global.player_sprites == "dunescave")
{
    palette_index = 4;
    shader_on = true;
}
else if (global.player_sprites == "normal")
{
    shader_on = false;
}
