draw_set_font(fnt_arcade);
draw_set_halign(fa_left);
draw_text(20, 10, string_hash_to_newline("DEBUG MAIN MENU V 0.2"));

if (pos == 0)
    draw_set_color(c_yellow);

draw_text(20, 20, string_hash_to_newline("CONTINUE"));
draw_set_color(c_white);

if (pos == 1)
    draw_set_color(c_yellow);

draw_text(20, 60, string_hash_to_newline("ROUTE SELECT: " + current_route));
draw_set_color(c_white);

if (pos >= 2)
    draw_set_color(c_yellow);

draw_text(20, 70, string_hash_to_newline("RESET FROM:"));
draw_set_color(c_white);
draw_set_color(c_white);

if (pos == 2 || pos == 6)
    draw_set_color(c_yellow);

draw_roundrect(20, 80, 140, 140, false);
draw_set_color(c_white);

if (pos == 3)
    draw_set_color(c_yellow);

draw_roundrect(180, 80, 300, 140, false);
draw_set_color(c_white);

if (pos == 4)
    draw_set_color(c_yellow);

draw_roundrect(20, 160, 140, 220, false);
draw_set_color(c_white);

if (pos == 5)
    draw_set_color(c_yellow);

draw_roundrect(180, 160, 300, 220, false);
draw_set_color(c_white);
draw_set_color(c_black);
draw_roundrect(23, 83, 137, 137, false);
draw_roundrect(183, 83, 297, 137, false);
draw_roundrect(23, 163, 137, 217, false);
draw_roundrect(183, 163, 297, 217, false);
draw_set_halign(fa_center);
draw_set_color(c_white);

if (page == 1)
{
    draw_sprite(spr_dalvhdown, -1, 80, 110);
    draw_sprite(spr_martlet_down, -1, 240, 120);
    draw_sprite(spr_mo_down_dunes, -1, 80, 190);
    draw_sprite(spr_npc_drinki, -1, 240, 190);
    draw_text(80, 145, string_hash_to_newline("Dark Ruins"));
    draw_text(240, 145, string_hash_to_newline("Snowdin"));
    draw_text(80, 225, string_hash_to_newline("The Dunes"));
    draw_text(240, 225, string_hash_to_newline("The Oasis"));
    draw_text(310, 108, string_hash_to_newline("->"));
}

if (page == 2)
{
    draw_sprite(spr_npc_cooper_talk, -1, 80, 118);
    draw_text(80, 145, string_hash_to_newline("The Wild East"));
    draw_text(10, 108, string_hash_to_newline("<-"));
}

draw_text(160, 225, string_hash_to_newline("Page:" + string(page) + "/2"));
draw_set_halign(fa_left);
