var clicked_instance, command_end_pos, command, i, value, variable_name, variable_value, output_digits, output_value, room_id;

if (mouse_check_button_pressed(mb_left))
{
    clicked_instance = instance_place(mouse_x, mouse_y, all);
    
    if (clicked_instance == -4)
    {
        instance_selected = 0;
        instance_selected_name = "nothing";
    }
    else
    {
        instance_selected = clicked_instance;
        instance_selected_name = object_get_name(clicked_instance.object_index);
        instance_selected_variables = variable_instance_get_names(clicked_instance);
        instance_selected_variable_current = 0;
    }
}

if (mouse_check_button_pressed(mb_right))
{
    instance_selected = 0;
    instance_selected_name = "nothing";
    instance_selected_variable_current = 0;
    instance_selected_variables = 0;
}

if (keyboard_check_pressed(vk_pageup))
{
    if (instance_selected_variable_current < (array_length(instance_selected_variables) - 1))
        instance_selected_variable_current += 1;
    else
        instance_selected_variable_current = 0;
}

if (keyboard_check_pressed(vk_pagedown))
{
    if (instance_selected_variable_current > 0)
        instance_selected_variable_current -= 1;
    else
        instance_selected_variable_current = array_length(instance_selected_variables) - 1;
}

output = keyboard_string;
command_end_pos = string_length(output);
command = "";

if (keyboard_check_pressed(vk_home) && is_array(instance_selected_variables) && array_length(instance_selected_variables) >= 1)
{
    for (i = 0; i < string_length(output); i++)
    {
        if (string_char_at(output, i) == " ")
        {
            command_end_pos = i - 1;
            break;
        }
    }
    
    command = string_copy(output, 0, command_end_pos);
    value = string_copy(output, command_end_pos + 2, string_length(output) - command_end_pos);
    
    switch (command)
    {
        case "varset":
            variable_name = instance_selected_variables[instance_selected_variable_current];
            variable_value = variable_instance_get(instance_selected, variable_name);
            
            if (is_real(variable_value))
            {
                output_digits = string_digits(output);
                
                if (output_digits == "")
                {
                    show_message("Not a digit.");
                    exit;
                }
                
                output_value = real(output_digits);
            }
            else
            {
                output_value = string(output);
            }
            
            variable_instance_set(instance_selected, variable_name, output_value);
            break;
        
        case "roomset":
            room_id = asset_get_index(string(value));
            
            if (room_exists(room_id))
                room_goto(room_id);
            else
                show_message(value + " This room does not exist.");
            
            break;
        
        case "mute":
            audio_master_gain(0);
            break;
        
        case "unmute":
            audio_master_gain(1);
            break;
    }
    
    output = "";
    keyboard_string = "";
}
