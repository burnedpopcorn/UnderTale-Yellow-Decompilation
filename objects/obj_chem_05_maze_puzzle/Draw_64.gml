if (live_call())
    return global.live_result;

if (!surface_exists(puzzle_surf))
    puzzle_surf = surface_create(480, 320);

draw_set_alpha(draw_alpha);
draw_sprite(spr_chem_compound_puzzle_overlay, 0, 0 + x_offset, 0 + y_offset);

if (puzzle_draw_guide == true)
{
    draw_sprite(spr_chem_compound_puzzle_guide, 0, 0 + x_offset, 0 + y_offset);
    exit;
}

surface_set_target(puzzle_surf);
draw_clear_alpha(c_black, 0);

if (draw_puzzle_layer == true)
{
    draw_tilemap(puzzle_layer[puzzle_level_current], 26 + x_offset, 22 + y_offset);
    
    if (instance_exists(obj_chem_05_maze_puzzle_player))
    {
        with (obj_chem_05_maze_puzzle_player)
            draw_sprite_ext(sprite_index, image_index, x + other.x_offset, y + other.y_offset, 1, 1, direction, c_white, other.draw_alpha);
    }
    
    if (instance_exists(obj_chem_05_maze_puzzle_goal))
    {
        with (obj_chem_05_maze_puzzle_goal)
            draw_sprite_ext(sprite_index, image_index, x + other.x_offset, y + other.y_offset, image_xscale, image_yscale, direction, c_white, other.draw_alpha);
    }
    
    draw_set_alpha(puzzle_alpha);
    draw_set_color(c_black);
    draw_rectangle(42 + x_offset, 38 + y_offset, 281, 197, false);
    draw_set_alpha(1);
}
else if (countdown_current > 0)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_main);
    draw_set_color(c_lime);
    
    if (countdown_current < 4)
        draw_text_transformed(160, 120, countdown_current, 4, 4, 0);
    else
        draw_text_transformed(160, 120, "   INITIALIZING...", 1, 1, 0);
    
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}
else if (puzzle_game_victory == true)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_main);
    draw_set_color(c_lime);
    draw_text_transformed(160, 120, "MIX SUCCESSFUL", 1, 1, 0);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}

surface_reset_target();
draw_surface(puzzle_surf, 0, 0);
draw_set_alpha(1);
