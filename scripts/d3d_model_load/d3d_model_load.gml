function d3d_model_load(argument0, argument1)
{
    var __ind, __fname, __file, __version, __numthings, __currthing, __kind, __i;
    
    __ind = argument0;
    __fname = argument1;
    __file = file_text_open_read(__fname);
    
    if (__file == -1)
        return -1;
    
    __version = file_text_read_real(__file);
    
    if (__version != 100)
    {
        file_text_close(__file);
        return -1;
    }
    
    file_text_readln(__file);
    __numthings = file_text_read_real(__file);
    file_text_readln(__file);
    d3d_model_clear(__ind);
    
    for (__currthing = 0; __currthing < __numthings; __currthing++)
    {
        __kind = round(file_text_read_real(__file));
        
        for (__i = 0; __i < 10; __i++)
            __args[__i] = file_text_read_real(__file);
        
        file_text_readln(__file);
        
        switch (__kind)
        {
            case UnknownEnum.Value_0:
                d3d_model_primitive_begin(__ind, round(__args[0]));
                break;
            
            case UnknownEnum.Value_1:
                d3d_model_primitive_end(__ind);
                break;
            
            case UnknownEnum.Value_2:
                d3d_model_vertex(__ind, __args[0], __args[1], __args[2]);
                break;
            
            case UnknownEnum.Value_3:
                d3d_model_vertex_color(__ind, __args[0], __args[1], __args[2], round(__args[3]), __args[4]);
                break;
            
            case UnknownEnum.Value_4:
                d3d_model_vertex_texture(__ind, __args[0], __args[1], __args[2], __args[3], __args[4]);
                break;
            
            case UnknownEnum.Value_5:
                d3d_model_vertex_texture_color(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], round(__args[5]), __args[6]);
                break;
            
            case UnknownEnum.Value_6:
                d3d_model_vertex_normal(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5]);
                break;
            
            case UnknownEnum.Value_7:
                d3d_model_vertex_normal_color(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], round(__args[6]), __args[7]);
                break;
            
            case UnknownEnum.Value_8:
                d3d_model_vertex_normal_texture(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7]);
                break;
            
            case UnknownEnum.Value_9:
                d3d_model_vertex_normal_texture_color(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]), __args[9]);
                break;
            
            case UnknownEnum.Value_10:
                d3d_model_block(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7]);
                break;
            
            case UnknownEnum.Value_11:
                d3d_model_cylinder(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]), round(__args[9]));
                break;
            
            case UnknownEnum.Value_12:
                d3d_model_cone(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]), round(__args[9]));
                break;
            
            case UnknownEnum.Value_13:
                d3d_model_ellipsoid(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7], round(__args[8]));
                break;
            
            case UnknownEnum.Value_14:
                d3d_model_wall(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7]);
                break;
            
            case UnknownEnum.Value_15:
                d3d_model_floor(__ind, __args[0], __args[1], __args[2], __args[3], __args[4], __args[5], __args[6], __args[7]);
                break;
        }
    }
    
    file_text_close(__file);
}
