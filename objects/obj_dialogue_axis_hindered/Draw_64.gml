var xx, portrait_xx, line_sep, i, len, j, minishop_box_xx, minishop_box_yy, item_count, spacing, ypos1, ypos2, xpos1, xpos2, xpos3, xpos4, soul_offset, soul_x, soul_y;

if (live_call())
    return global.live_result;

if (message_current > (array_length_1d(prt) - 1) || prt[message_current] == 0)
    portrait = false;
else
    portrait = true;

if (position == 0)
    yy = 160;
else
    yy = 5;

xx = 90;
portrait_xx = 52;
line_sep = 18;
scr_draw_dialogue_box_anywhere(2.4, 1.09375, 0.1, 160);
draw_set_font(dialogue_font);
draw_set_color(c_white);
draw_set_halign(fa_left);
message_actual = string_copy(message[message_current], 0, cutoff);
draw_text_ext(xx, yy + 10, string_hash_to_newline(message_actual), line_sep, -1);

if (color == true)
{
    if (color_set == false)
    {
        for (i = 0; i < (array_length_1d(message) - 1); i++)
        {
            len = array_length_2d(message_col, i);
            
            if (len == 0)
            {
                message_col[i][0] = "";
            }
            else if (len > 0)
            {
                for (j = 0; j < (array_length_1d(col_modif) - 1); j++)
                {
                    if (j < array_length_2d(message_col, i) && message_col[i][j] == 0)
                        message_col[i][j] = "";
                }
            }
        }
        
        color_set = true;
    }
    
    for (j = 0; j < array_length_2d(message_col, message_current); j++)
    {
        message_actual_col[j] = string_copy(message_col[message_current][j], 0, cutoff);
        draw_set_color(col_modif[j]);
        draw_text_ext(xx, yy + 10, string_hash_to_newline(message_actual_col[j]), line_sep, -1);
    }
}

draw_set_color(c_white);

if (dialogue_is_minishop == true)
{
    minishop_box_xx = 204;
    minishop_box_yy = 92;
    draw_set_color(c_white);
    draw_rectangle(minishop_box_xx, minishop_box_yy, minishop_box_xx + 100, minishop_box_yy + 53, false);
    draw_set_color(c_black);
    draw_rectangle(minishop_box_xx + 3, minishop_box_yy + 3, (minishop_box_xx + 100) - 3, (minishop_box_yy + 53) - 3, false);
    draw_set_font(fnt_battle);
    draw_set_color(c_white);
    
    for (item_count = 1; item_count <= 8; item_count++)
    {
        if (global.item_slot[item_count] == "Nothing")
            break;
    }
    
    draw_text(217, 100, string_hash_to_newline("$ - " + string(global.player_gold) + "#SPACE - " + string(item_count - 1) + "/8"));
}

if (choice == false && alpha_fade == false)
    exit;

xx = 100;
spacing = 0.25;

if (ch[4] != "")
    spacing = 0.5;

if (portrait)
    spacing = 0.15;

if (position == 0)
{
    ypos1 = 190;
    
    if (ch[3] == "")
        ypos1 = 210;
    
    ypos2 = 210;
}
else
{
    ypos1 = 32;
    
    if (ch[3] == "")
        ypos1 = 56;
    
    ypos2 = 56;
}

if (ch[4] != "")
    xx -= 30;

xpos1 = xx;
xpos2 = xx + 122;

if (portrait == true)
    xpos1 += 20;

xpos3 = xpos1;
xpos4 = xpos2;

if (ch[2] == "")
    xpos1 = xpos1 + 56;

if (ch[4] == "")
    xpos3 = xpos1 + 56;

draw_set_alpha(ch_alpha);

if (cutoff >= string_length(message[message_current]) && global.dialogue_open == true)
{
    draw_set_halign(fa_center);
    
    if (ch[4] != "")
        draw_set_halign(fa_left);
    
    draw_text(xpos1, ypos1, string_hash_to_newline(ch[1]));
    
    if (ch[2] != "")
        draw_text(xpos2, ypos1, string_hash_to_newline(ch[2]));
    
    if (ch[3] != "")
        draw_text(xpos3, ypos2, string_hash_to_newline(ch[3]));
    
    if (ch[4] != "")
        draw_text(xpos4, ypos2, string_hash_to_newline(ch[4]));
    
    draw_set_halign(fa_center);
    soul_offset = string_width(string_hash_to_newline(ch[p])) * 0.5;
    
    if (ch[4] != "")
        soul_offset = 0;
    
    switch (p)
    {
        case 1:
            soul_x = xpos1 - soul_offset - 8;
            soul_y = ypos1 + 8;
            break;
        
        case 2:
            soul_x = xpos2 - soul_offset - 8;
            soul_y = ypos1 + 8;
            break;
        
        case 3:
            soul_x = xpos3 - soul_offset - 8;
            soul_y = ypos2 + 8;
            break;
        
        case 4:
            soul_x = xpos4 - soul_offset - 8;
            soul_y = ypos2 + 8;
            break;
    }
    
    draw_sprite(spr_heart_yellow_overworld, 0, soul_x, soul_y);
}

draw_set_alpha(1);
draw_set_halign(fa_left);
