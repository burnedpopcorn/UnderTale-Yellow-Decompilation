if (live_call())
    return global.live_result;

if (instance_exists(obj_dialogue_box_battle_transformation_any))
    var box = obj_dialogue_box_battle_transformation_any;
else if (instance_exists(obj_dialogue_box_battle))
    var box = obj_dialogue_box_battle;
else if (instance_exists(obj_dialogue_box_battle_transformation_any_out))
    var box = obj_dialogue_box_battle_transformation_any_out;
else if (instance_exists(obj_dialogue_box_battle_transformation_any_in))
    var box = obj_dialogue_box_battle_transformation_any_in;
else
    exit;

var xx = axis_trash_meter_x;
var yy = axis_trash_meter_y;

if (global.geno_complete[3] == true)
    exit;

draw_set_color(c_orange);
draw_rectangle(xx, yy, xx + (62 * (axis_trash_meter_current / 100)), yy + 32, false);
draw_set_alpha(axis_trash_meter_pulse_alpha);
draw_set_color(c_red);
draw_rectangle(xx, yy, xx + (62 * (axis_trash_meter_current / 100)), yy + 32, false);
draw_set_alpha(1);
draw_sprite(spr_axis_tick_o_bar, 0, xx, yy);
draw_set_alpha(1);
xx = axis_battery_meter_x;
yy = axis_trash_meter_y;

if (shield_enabled)
{
    shader_set(sh_yellow);
    draw_set_alpha(axis_shield_pulse_alpha);
    draw_outline(3019, 0, xx, yy, 1, 1, 0, 16777215, axis_shield_pulse_alpha);
    
    with (obj_axis_body)
    {
        draw_set_alpha(other.axis_shield_pulse_alpha);
        draw_outline(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, 16777215, other.axis_shield_pulse_alpha);
        shader_reset();
        draw_set_alpha(1);
        draw_self();
    }
}

draw_set_color(c_lime);
draw_rectangle(xx, yy, (xx + 52) - (52 * (1 - (axis_battery_meter_current / 100))), yy + 32, false);

if (shield_enabled)
{
    draw_set_alpha(axis_shield_pulse_alpha);
    draw_set_color(c_yellow);
    draw_rectangle(xx, yy, (xx + 52) - (52 * (1 - (axis_battery_meter_current / 100))), yy + 32, false);
    draw_set_alpha(1);
}

draw_sprite(spr_axis_battery_meter, 0, xx, yy);
