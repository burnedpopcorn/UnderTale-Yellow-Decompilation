if (live_call())
    return global.live_result;

draw_set_color(c_white);

if (arc_controls_open == true)
{
    var xx = room_width / 2;
    var yy = room_height / 2;
    draw_sprite(spr_arcade_controls, 0, xx, yy);
    var action_key = 0;
    var cancel_key = 0;
    
    switch (global.action_key)
    {
        case "X":
            action_key = 0;
            break;
        
        case "Z":
            action_key = 1;
            break;
        
        case "A":
            action_key = 2;
            break;
        
        case "B":
            action_key = 3;
            break;
        
        case "Y":
            cancel_key = 4;
            break;
    }
    
    switch (global.cancel_key)
    {
        case "X":
            cancel_key = 0;
            break;
        
        case "Z":
            cancel_key = 1;
            break;
        
        case "A":
            cancel_key = 2;
            break;
        
        case "B":
            cancel_key = 3;
            break;
        
        case "Y":
            cancel_key = 4;
            break;
    }
    
    draw_sprite(spr_arcade_controls_buttons, cancel_key, (xx - 79) + 14, (yy - 72) + 72);
    draw_sprite(spr_arcade_controls_buttons, action_key, (xx - 79) + 102, (yy - 72) + 132);
    exit;
}

if (scene == 1)
{
    draw_set_alpha(arc_logos_alpha);
    draw_sprite(spr_arcade_logo, 0, room_width / 2, room_height / 2);
    draw_set_alpha(1);
}

if (scene == 2)
{
    draw_set_color(c_white);
    draw_rectangle(80, 48, 239, 206, false);
}

if (scene >= 3 && scene < 6)
{
    draw_sprite(spr_arcade_menu, 0, room_width / 2, room_height / 2);
    var title_index;
    
    if (arc_title_x > 160)
        title_index = 0;
    else
        title_index = 1;
    
    draw_sprite(spr_arcade_title, title_index, arc_title_x, 80);
}

if (scene >= 5)
{
    var yy = 140;
    var xx = 130;
    draw_set_font(fnt_arcade);
    draw_text_transformed(xx, yy, string_hash_to_newline("Play"), 0.5, 0.5, 0);
    draw_text_transformed(xx, yy + 15, string_hash_to_newline("Help"), 0.5, 0.5, 0);
    draw_text_transformed(xx, yy + 30, string_hash_to_newline("Quit"), 0.5, 0.5, 0);
    
    switch (arc_cursor_pos)
    {
        case 1:
            yy = 145;
            break;
        
        case 2:
            yy = 160;
            break;
        
        case 3:
            yy = 175;
            break;
    }
    
    if (scene == 5)
        draw_sprite(spr_arcade_heart, 0, xx - 8, yy);
    
    if (scene == 6)
        draw_sprite(spr_arcade_heart, -1, xx - 8, yy);
}
