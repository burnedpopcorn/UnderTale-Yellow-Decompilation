display_set_gui_size(640, 480);
draw_set_alpha(draw_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 640, 480, false);
var robot_box_xx = 60;
var robot_box_yy = 20;
var robot_box_width = robot_box_xx + 220;
var robot_box_height = robot_box_yy + 260;
draw_set_color(c_white);
draw_rectangle(robot_box_xx - 4, robot_box_yy - 4, robot_box_width + 4, robot_box_height + 4, false);
draw_set_color(c_black);
draw_rectangle(robot_box_xx, robot_box_yy, robot_box_width, robot_box_height, false);
draw_set_color(c_green);
draw_rectangle(robot_box_xx + 20, robot_box_yy + 20, robot_box_width - 20, robot_box_height - 20, true);
draw_line(robot_box_xx + 20 + 90, robot_box_yy + 20, robot_box_xx + 20 + 90, robot_box_height - 20);
draw_line(robot_box_xx + 20, robot_box_yy + 20 + 110, robot_box_width - 20, robot_box_yy + 20 + 110);
var box_select_xx = 580;
var box_select_yy = 20;
var box_select_width = box_select_xx - 220;
var box_select_height = box_select_yy + 260;
draw_set_color(c_white);
draw_rectangle(box_select_xx + 4, box_select_yy - 4, box_select_width - 4, box_select_height + 4, false);
draw_set_color(c_dkgray);
draw_rectangle(box_select_xx, box_select_yy, box_select_width, box_select_height, false);

if (!global.dialogue_open)
{
    var dbox_xx = 60;
    var dbox_yy = 320;
    var dbox_width = dbox_xx + 420;
    var dbox_height = dbox_yy + 128;
    draw_set_color(c_white);
    draw_rectangle(dbox_xx - 4, dbox_yy - 4, dbox_width + 4, dbox_height + 4, false);
    draw_set_color(c_black);
    draw_rectangle(dbox_xx, dbox_yy, dbox_width, dbox_height, false);
    draw_set_color(c_white);
    draw_set_font(fnt_main_battle);
    draw_text(80, 330, string_hash_to_newline(string("{0} - Select/Place#{1} - Cancel selection#{2} - Rotate/Scale item", global.action_key, global.pause_key, global.cancel_key)));
    var butt1_xx = 500;
    var butt1_yy = 320;
    var butt1_width = butt1_xx + 80;
    var butt1_height = butt1_yy + 50;
    var butt1_color = 16777215;
    
    if (gui_button_selected == 0)
        butt1_color = 65535;
    
    draw_set_color(butt1_color);
    draw_rectangle(butt1_xx - 4, butt1_yy - 4, butt1_width + 4, butt1_height + 4, false);
    draw_set_color(c_black);
    draw_rectangle(butt1_xx, butt1_yy, butt1_width, butt1_height, false);
    draw_set_font(fnt_mainb);
    draw_set_color(butt1_color);
    draw_text(butt1_xx + 14, butt1_yy + 7, string_hash_to_newline("UNDO"));
    var butt2_xx = 500;
    var butt2_yy = 398;
    var butt2_width = butt2_xx + 80;
    var butt2_height = butt2_yy + 50;
    var butt2_color = 16777215;
    
    if (gui_button_selected == 1)
        butt2_color = 65535;
    
    draw_set_color(butt2_color);
    draw_rectangle(butt2_xx - 4, butt2_yy - 4, butt2_width + 4, butt2_height + 4, false);
    draw_set_color(c_black);
    draw_rectangle(butt2_xx, butt2_yy, butt2_width, butt2_height, false);
    draw_set_font(fnt_mainb);
    draw_set_color(butt2_color);
    draw_text(butt2_xx + 14, butt2_yy + 7, string_hash_to_newline("DONE"));
}

var robot_item_number = instance_number(obj_robot_build_item);
draw_set_color(c_white);

if (robot_item_number >= item_number_max)
    draw_set_color(c_red);

draw_set_font(fnt_mainb);
draw_set_halign(fa_center);
draw_text(320, 280, string_hash_to_newline(string(robot_item_number) + " / " + string(item_number_max)));
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_sprite_ext(robot_item[0], 0, 415, 85, robot_item_scale[0], robot_item_scale[0], 0, c_white, draw_alpha);
draw_sprite_ext(robot_item[1], 0, 525, 85, robot_item_scale[1], robot_item_scale[1], 0, c_white, draw_alpha);
draw_sprite_ext(robot_item[2], 0, 415, 225, robot_item_scale[2], robot_item_scale[2], 0, c_white, draw_alpha);
draw_sprite_ext(robot_item[3], 0, 525, 225, robot_item_scale[3], robot_item_scale[3], 0, c_white, draw_alpha);
draw_set_alpha(1);
display_set_gui_size(320, 240);
