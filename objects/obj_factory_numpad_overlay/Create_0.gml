if (live_call())
    return global.live_result;

scr_cutscene_start();

switch (room)
{
    case rm_steamworks_factory_02:
        target_code = global.factory_code;
        break;
    
    case rm_steamworks_factory_03:
        target_code_array = ["0", "0", "0", "0"];
        
        for (var i = 0; i < ds_list_size(global.factory_code_2); i++)
        {
            var new_string = "";
            var target_pos = 0;
            
            switch (ds_list_find_value(global.factory_code_2, i))
            {
                case 0:
                    new_string = "1";
                    break;
                
                case 1:
                    new_string = "2";
                    break;
                
                case 2:
                    new_string = "3";
                    break;
                
                case 3:
                    new_string = "4";
                    break;
                
                case 4:
                    new_string = "1";
                    target_pos = 1;
                    break;
                
                case 5:
                    new_string = "2";
                    target_pos = 1;
                    break;
                
                case 6:
                    new_string = "3";
                    target_pos = 1;
                    break;
                
                case 7:
                    new_string = "4";
                    target_pos = 1;
                    break;
                
                case 8:
                    new_string = "1";
                    target_pos = 2;
                    break;
                
                case 9:
                    new_string = "2";
                    target_pos = 2;
                    break;
                
                case 10:
                    new_string = "3";
                    target_pos = 2;
                    break;
                
                case 11:
                    new_string = "4";
                    target_pos = 2;
                    break;
                
                case 12:
                    new_string = "1";
                    target_pos = 3;
                    break;
                
                case 13:
                    new_string = "2";
                    target_pos = 3;
                    break;
                
                case 14:
                    new_string = "3";
                    target_pos = 3;
                    break;
                
                case 15:
                    new_string = "4";
                    target_pos = 3;
                    break;
            }
            
            target_code_array[target_pos] = new_string;
        }
        
        target_code = "";
        
        for (var i = 0; i < array_length(target_code_array); i++)
            target_code += target_code_array[i];
        
        break;
    
    case rm_steamworks_factory_04:
        target_code = global.factory_code_3;
        break;
}

entry_number = "";
entry_correct = -1;
scene = 0;
layer_create(-99999, "sequence_layer");
overlay_sequence = layer_sequence_create("sequence_layer", camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 23);
number_selected = 1;
