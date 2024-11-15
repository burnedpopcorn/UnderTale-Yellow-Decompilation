var variable_name, variable_value;

draw_set_color(c_white);
draw_roundrect(18, 8, 302, 62, false);
draw_set_color(c_black);
draw_roundrect(20, 10, 300, 60, false);
draw_set_color(c_lime);
draw_set_font(fnt_stats);
draw_text(28, 14, instance_selected_name);

if (is_array(instance_selected_variables) && array_length(instance_selected_variables) >= 1)
{
    variable_name = instance_selected_variables[instance_selected_variable_current];
    variable_value = variable_instance_get(instance_selected, variable_name);
    draw_text(28, 30, variable_name + ":     " + string(variable_value));
}

draw_text(28, 46, output);
