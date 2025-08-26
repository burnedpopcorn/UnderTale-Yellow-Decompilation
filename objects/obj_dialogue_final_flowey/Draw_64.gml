if (live_call())
    return global.live_result;

if (message_current > (array_length_1d(prt) - 1) || prt[message_current] == spr_collisionbox)
    portrait = false;
else
    portrait = true;

var line_sep = 18;
draw_set_font(dialogue_font);
draw_set_color(c_white);
draw_set_halign(fa_left);
message_actual = string_copy(message[message_current], 0, cutoff);
draw_text_ext(xx, yy + 10, string_hash_to_newline(message_actual), line_sep, -1);

if (color == true)
{
    if (color_set == false)
    {
        for (var i = 0; i < (array_length_1d(message) - 1); i++)
        {
            var len = array_length_2d(message_col, i);
            
            if (len == 0)
            {
                message_col[i][0] = "";
            }
            else if (len > 0)
            {
                for (var j = 0; j < (array_length_1d(col_modif) - 1); j++)
                {
                    if (j < array_length_2d(message_col, i) && message_col[i][j] == 0)
                        message_col[i][j] = "";
                }
            }
        }
        
        color_set = true;
    }
    
    for (var j = 0; j < array_length_2d(message_col, message_current); j++)
    {
        message_actual_col[j] = string_copy(message_col[message_current][j], 0, cutoff);
        draw_set_color(col_modif[j]);
        draw_text_ext(xx, yy + 10, string_hash_to_newline(message_actual_col[j]), line_sep, -1);
    }
}

draw_set_color(c_white);

if (dialogue_is_minishop == true)
{
    var minishop_box_xx = 204;
    var minishop_box_yy = 92;
    draw_set_color(c_white);
    draw_rectangle(minishop_box_xx, minishop_box_yy, minishop_box_xx + 100, minishop_box_yy + 53, false);
    draw_set_color(c_black);
    draw_rectangle(minishop_box_xx + 3, minishop_box_yy + 3, (minishop_box_xx + 100) - 3, (minishop_box_yy + 53) - 3, false);
    draw_set_font(fnt_battle);
    draw_set_color(c_white);
    var item_count;
    
    for (item_count = 1; item_count <= 8; item_count++)
    {
        if (global.item_slot[item_count] == "Nothing")
            break;
    }
    
    draw_text(217, 100, string_hash_to_newline("$ - " + string(global.player_gold) + "#SPACE - " + string(item_count - 1) + "/8"));
}

var width1 = string_width(string_hash_to_newline(ch[1])) * 0.5;
var width2 = string_width(string_hash_to_newline(ch[2])) * 0.5;
xpos1 = xx - width1;
xpos2 = (xpos1 + 122) - width2;
xpos3 = xpos1;
xpos4 = xpos2;
draw_set_alpha(1);
draw_set_halign(fa_left);
