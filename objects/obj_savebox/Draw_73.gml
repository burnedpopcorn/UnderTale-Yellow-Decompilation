var string_minutes, string_seconds;

draw_set_halign(fa_left);
draw_sprite_ext(spr_dialoguebox, 1, x, y, 3.4, 1.3, image_angle, color, image_alpha);
draw_sprite_ext(spr_dialoguebox, 0, x, y, 3.3, 1.2, image_angle, image_blend, image_alpha);
draw_set_colour(color2);
draw_set_font(fnt_main);
draw_text(x - 90, y - 30, string_hash_to_newline("Clover"));
draw_text(x - 20, y - 30, string_hash_to_newline("LV " + string(global.player_level)));
string_minutes = string(global.elapsed_seconds div 60);
string_seconds = string(global.elapsed_seconds % 60);

if (real(string_minutes) < 10)
    string_minutes = "0" + string_minutes;

if (real(string_seconds) < 10)
    string_seconds = "0" + string_seconds;

draw_text(x + 30, y - 30, string_hash_to_newline(string_minutes + ":" + string_seconds));
ini_open("Save.sav");
draw_text(x - 90, y - 10, string_hash_to_newline(ini_read_string("Save1", "rmName", "Room Name")));
ini_close();

if (statBox == true)
    instance_destroy();

if (p1 == true)
{
    draw_set_color(color2);
    draw_set_font(fnt_main);
    
    if (statBox == false && itemBox == false)
        draw_sprite(encounter_heart, 0, x - 90, y + 23);
    
    draw_text(x - 80, y + 15, string_hash_to_newline("Save"));
}

if (p1 == false)
{
    draw_set_color(color2);
    draw_set_font(fnt_main);
    draw_text(x - 80, y + 15, string_hash_to_newline("Save"));
}

if (p2 == true)
{
    draw_set_color(color2);
    draw_set_font(fnt_main);
    
    if (statBox == false && itemBox == false)
        draw_sprite(encounter_heart, 0, x, y + 23);
    
    draw_text(x + 10, y + 15, string_hash_to_newline("Return"));
}

if (p2 == false)
{
    draw_set_color(color2);
    draw_set_font(fnt_main);
    draw_text(x + 10, y + 15, string_hash_to_newline("Return"));
}
