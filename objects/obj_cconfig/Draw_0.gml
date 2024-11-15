var xx;

if (control_test == false)
{
    draw_set_color(c_white);
    draw_set_font(fnt_mainb);
    draw_set_halign(fa_center);
    draw_text(__view_get(e__VW.XView, 0) + 200, __view_get(e__VW.YView, 0) + 13, string_hash_to_newline("JOYSTICK CONFIG"));
    draw_set_font(fnt_battle);
    draw_set_halign(fa_left);
    xx = __view_get(e__VW.XView, 0) + 20;
    
    if (p[0] == true)
        draw_set_color(c_yellow);
    
    draw_text(xx, __view_get(e__VW.YView, 0) + 44, string_hash_to_newline("Exit"));
    draw_set_color(c_white);
    
    if (p[1] == true)
        draw_set_color(c_yellow);
    
    draw_text(xx, __view_get(e__VW.YView, 0) + 79, string_hash_to_newline("CONFIRM - [Z, ENTER]::"));
    draw_set_color(c_white);
    
    if (p[2] == true)
        draw_set_color(c_yellow);
    
    draw_text(xx, __view_get(e__VW.YView, 0) + 94, string_hash_to_newline("CANCEL  - [X, SHIFT]::"));
    draw_set_color(c_white);
    
    if (p[3] == true)
        draw_set_color(c_yellow);
    
    draw_text(xx, __view_get(e__VW.YView, 0) + 109, string_hash_to_newline("MENU    - [C, CTRL] ::"));
    draw_set_color(c_white);
    
    if (p[4] == true)
        draw_set_color(c_yellow);
    
    draw_text(xx, __view_get(e__VW.YView, 0) + 130, string_hash_to_newline("DEADZONE :: " + string(round(global.gamepad_deadzone * 100)) + "%"));
    draw_set_color(c_white);
    
    if (p[5] == true)
        draw_set_color(c_yellow);
    
    draw_text(xx, __view_get(e__VW.YView, 0) + 160, string_hash_to_newline("RESET TO DEFAULT"));
    draw_set_color(c_white);
    
    if (p[6] == true)
        draw_set_color(c_yellow);
    
    draw_text(xx, __view_get(e__VW.YView, 0) + 175, string_hash_to_newline("CONTROL TEST"));
    draw_set_color(c_white);
    draw_set_color(c_aqua);
    draw_text(xx + 180, __view_get(e__VW.YView, 0) + 79, string_hash_to_newline(string(global.buttonText1)) + ", RB");
    draw_text(xx + 180, __view_get(e__VW.YView, 0) + 94, string_hash_to_newline(string(global.buttonText2)) + ", LB");
    draw_text(xx + 180, __view_get(e__VW.YView, 0) + 109, string_hash_to_newline(string(global.buttonText3)));
}
