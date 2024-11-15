draw_self();
draw_set_color(c_green);
draw_set_font(fnt_chem_computer_screen);
draw_set_alpha(text_alpha);

if (puzzle_number != "")
    draw_sprite(spr_factory_03_furnace_monitor, puzzle_number, x + 79, y - 34);

draw_set_alpha(1);
