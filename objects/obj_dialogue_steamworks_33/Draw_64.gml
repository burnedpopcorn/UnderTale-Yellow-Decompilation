var yy, xx, line_sep, ypos1, ypos2;

yy = 40;
xx = 48;
line_sep = 18;
draw_set_alpha(draw_alpha);
draw_sprite(spr_chem_compound_puzzle_overlay, 0, 0, 0);
draw_set_font(fnt_main);
draw_set_color(c_lime);
draw_set_halign(fa_left);
message_actual = string_copy(message[message_current], 0, cutoff);
draw_text_ext(xx, yy, string_hash_to_newline(message_actual), line_sep, -1);

if (choice == true)
{
    ypos1 = 84;
    ypos2 = 100;
    ypos3 = 116;
    ypos4 = 132;
    ypos5 = 148;
    
    if (cutoff >= string_length(message[message_current]))
    {
        draw_set_color(c_gray);
        
        if (p == 1)
            draw_set_color(c_lime);
        
        draw_text(xx + 20, ypos1, string_hash_to_newline(ch[1]));
        draw_set_color(c_gray);
        
        if (p == 2)
            draw_set_color(c_lime);
        
        if (ch[2] != "")
            draw_text(xx + 20, ypos2, string_hash_to_newline(ch[2]));
        
        draw_set_color(c_gray);
        
        if (p == 3)
            draw_set_color(c_lime);
        
        if (ch[3] != "")
            draw_text(xx + 20, ypos3, string_hash_to_newline(ch[3]));
        
        draw_set_color(c_gray);
        
        if (p == 4)
            draw_set_color(c_lime);
        
        if (ch[4] != "")
            draw_text(xx + 20, ypos4, string_hash_to_newline(ch[4]));
        
        draw_set_color(c_gray);
        
        if (p == 5)
            draw_set_color(c_lime);
        
        if (ch[5] != "")
            draw_text(xx + 20, ypos5, string_hash_to_newline(ch[5]));
        
        draw_set_color(c_gray);
    }
}

draw_set_alpha(1);
