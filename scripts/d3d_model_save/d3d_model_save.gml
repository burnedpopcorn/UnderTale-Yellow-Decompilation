function d3d_model_save(argument0, argument1)
{
    var __ind, __fname, __file, __vertexsize, __numthings, __numpointverts, __numlineverts, __numtriverts, __buffpos, __buf, __i, __x, __y, __z, __nx, __ny, __nz, __colalpha, __u, __v, __col, __alpha;
    
    __ind = argument0;
    __fname = argument1;
    __file = file_text_open_write(__fname);
    
    if (__file == -1)
        return -1;
    
    __vertexsize = 36;
    __numthings = 0;
    __numpointverts = 0;
    __numlineverts = 0;
    __numtriverts = 0;
    
    if (__ind[UnknownEnum.Value_0] != undefined)
    {
        __buffpos = buffer_tell(__ind[UnknownEnum.Value_0]);
        
        if (__buffpos > 0)
            __numthings += 2;
        
        __numpointverts = __buffpos / __vertexsize;
        __numthings += __numpointverts;
    }
    
    if (__ind[UnknownEnum.Value_1] != undefined)
    {
        __buffpos = buffer_tell(__ind[UnknownEnum.Value_1]);
        
        if (__buffpos > 0)
            __numthings += 2;
        
        __numlineverts = __buffpos / __vertexsize;
        __numthings += __numlineverts;
    }
    
    if (__ind[UnknownEnum.Value_2] != undefined)
    {
        __buffpos = buffer_tell(__ind[UnknownEnum.Value_2]);
        
        if (__buffpos > 0)
            __numthings += 2;
        
        __numtriverts = __buffpos / __vertexsize;
        __numthings += __numtriverts;
    }
    
    file_text_write_string(__file, "100");
    file_text_writeln(__file);
    file_text_write_string(__file, string_format(__numthings, 0, 0));
    file_text_writeln(__file);
    
    if (__ind[UnknownEnum.Value_0] != undefined)
    {
        __buf = __ind[UnknownEnum.Value_0];
        
        if (__numpointverts > 0)
        {
            file_text_write_string(__file, "0 " + string_format(1, 10, 4) + " 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
            buffer_seek(__buf, buffer_seek_start, 0);
            
            for (__i = 0; __i < __numpointverts; __i++)
            {
                __x = buffer_read(__buf, buffer_f32);
                __y = buffer_read(__buf, buffer_f32);
                __z = buffer_read(__buf, buffer_f32);
                __nx = buffer_read(__buf, buffer_f32);
                __ny = buffer_read(__buf, buffer_f32);
                __nz = buffer_read(__buf, buffer_f32);
                __colalpha = buffer_read(__buf, buffer_u32);
                __u = buffer_read(__buf, buffer_f32);
                __v = buffer_read(__buf, buffer_f32);
                __col = __colalpha & c_white;
                __alpha = ((__colalpha >> 24) & 255) / 255;
                file_text_write_string(__file, "9 " + string_format(__x, 10, 4) + " " + string_format(__y, 10, 4) + " " + string_format(__z, 10, 4) + " " + string_format(__nx, 10, 4) + " " + string_format(__ny, 10, 4) + " " + string_format(__nz, 10, 4) + " " + string_format(__u, 10, 4) + " " + string_format(__v, 10, 4) + " " + string_format(__col, 10, 4) + " " + string_format(__alpha, 10, 4));
                file_text_writeln(__file);
            }
            
            file_text_write_string(__file, "1 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
        }
    }
    
    if (__ind[UnknownEnum.Value_1] != undefined)
    {
        __buf = __ind[UnknownEnum.Value_1];
        
        if (__numlineverts > 0)
        {
            file_text_write_string(__file, "0 " + string_format(2, 10, 4) + " 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
            buffer_seek(__buf, buffer_seek_start, 0);
            
            for (__i = 0; __i < __numlineverts; __i++)
            {
                __x = buffer_read(__buf, buffer_f32);
                __y = buffer_read(__buf, buffer_f32);
                __z = buffer_read(__buf, buffer_f32);
                __nx = buffer_read(__buf, buffer_f32);
                __ny = buffer_read(__buf, buffer_f32);
                __nz = buffer_read(__buf, buffer_f32);
                __colalpha = buffer_read(__buf, buffer_u32);
                __u = buffer_read(__buf, buffer_f32);
                __v = buffer_read(__buf, buffer_f32);
                __col = __colalpha & c_white;
                __alpha = ((__colalpha >> 24) & 255) / 255;
                file_text_write_string(__file, "9 " + string_format(__x, 10, 4) + " " + string_format(__y, 10, 4) + " " + string_format(__z, 10, 4) + " " + string_format(__nx, 10, 4) + " " + string_format(__ny, 10, 4) + " " + string_format(__nz, 10, 4) + " " + string_format(__u, 10, 4) + " " + string_format(__v, 10, 4) + " " + string_format(__col, 10, 4) + " " + string_format(__alpha, 10, 4));
                file_text_writeln(__file);
            }
            
            file_text_write_string(__file, "1 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
        }
    }
    
    if (__ind[UnknownEnum.Value_2] != undefined)
    {
        __buf = __ind[UnknownEnum.Value_2];
        
        if (__numtriverts > 0)
        {
            file_text_write_string(__file, "0 " + string_format(4, 10, 4) + " 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
            buffer_seek(__buf, buffer_seek_start, 0);
            
            for (__i = 0; __i < __numtriverts; __i++)
            {
                __x = buffer_read(__buf, buffer_f32);
                __y = buffer_read(__buf, buffer_f32);
                __z = buffer_read(__buf, buffer_f32);
                __nx = buffer_read(__buf, buffer_f32);
                __ny = buffer_read(__buf, buffer_f32);
                __nz = buffer_read(__buf, buffer_f32);
                __colalpha = buffer_read(__buf, buffer_u32);
                __u = buffer_read(__buf, buffer_f32);
                __v = buffer_read(__buf, buffer_f32);
                __col = __colalpha & c_white;
                __alpha = ((__colalpha >> 24) & 255) / 255;
                file_text_write_string(__file, "9 " + string_format(__x, 10, 4) + " " + string_format(__y, 10, 4) + " " + string_format(__z, 10, 4) + " " + string_format(__nx, 10, 4) + " " + string_format(__ny, 10, 4) + " " + string_format(__nz, 10, 4) + " " + string_format(__u, 10, 4) + " " + string_format(__v, 10, 4) + " " + string_format(__col, 10, 4) + " " + string_format(__alpha, 10, 4));
                file_text_writeln(__file);
            }
            
            file_text_write_string(__file, "1 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
        }
    }
    
    file_text_close(__file);
}
