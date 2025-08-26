function d3d_model_save(arg0, arg1)
{
    var __ind = arg0;
    var __fname = arg1;
    var __file = file_text_open_write(__fname);
    
    if (__file == -1)
        return -1;
    
    var __vertexsize = 36;
    var __numthings = 0;
    var __numpointverts = 0;
    var __numlineverts = 0;
    var __numtriverts = 0;
    
    if (__ind[UnknownEnum.Value_0] != undefined)
    {
        var __buffpos = buffer_tell(__ind[UnknownEnum.Value_0]);
        
        if (__buffpos > 0)
            __numthings += 2;
        
        __numpointverts = __buffpos / __vertexsize;
        __numthings += __numpointverts;
    }
    
    if (__ind[UnknownEnum.Value_1] != undefined)
    {
        var __buffpos = buffer_tell(__ind[UnknownEnum.Value_1]);
        
        if (__buffpos > 0)
            __numthings += 2;
        
        __numlineverts = __buffpos / __vertexsize;
        __numthings += __numlineverts;
    }
    
    if (__ind[UnknownEnum.Value_2] != undefined)
    {
        var __buffpos = buffer_tell(__ind[UnknownEnum.Value_2]);
        
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
        var __buf = __ind[UnknownEnum.Value_0];
        
        if (__numpointverts > 0)
        {
            file_text_write_string(__file, "0 " + string_format(1, 10, 4) + " 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
            buffer_seek(__buf, buffer_seek_start, 0);
            
            for (var __i = 0; __i < __numpointverts; __i++)
            {
                var __x = buffer_read(__buf, buffer_f32);
                var __y = buffer_read(__buf, buffer_f32);
                var __z = buffer_read(__buf, buffer_f32);
                var __nx = buffer_read(__buf, buffer_f32);
                var __ny = buffer_read(__buf, buffer_f32);
                var __nz = buffer_read(__buf, buffer_f32);
                var __colalpha = buffer_read(__buf, buffer_u32);
                var __u = buffer_read(__buf, buffer_f32);
                var __v = buffer_read(__buf, buffer_f32);
                var __col = __colalpha & 16777215;
                var __alpha = ((__colalpha >> 24) & 255) / 255;
                file_text_write_string(__file, "9 " + string_format(__x, 10, 4) + " " + string_format(__y, 10, 4) + " " + string_format(__z, 10, 4) + " " + string_format(__nx, 10, 4) + " " + string_format(__ny, 10, 4) + " " + string_format(__nz, 10, 4) + " " + string_format(__u, 10, 4) + " " + string_format(__v, 10, 4) + " " + string_format(__col, 10, 4) + " " + string_format(__alpha, 10, 4));
                file_text_writeln(__file);
            }
            
            file_text_write_string(__file, "1 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
        }
    }
    
    if (__ind[UnknownEnum.Value_1] != undefined)
    {
        var __buf = __ind[UnknownEnum.Value_1];
        
        if (__numlineverts > 0)
        {
            file_text_write_string(__file, "0 " + string_format(2, 10, 4) + " 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
            buffer_seek(__buf, buffer_seek_start, 0);
            
            for (var __i = 0; __i < __numlineverts; __i++)
            {
                var __x = buffer_read(__buf, buffer_f32);
                var __y = buffer_read(__buf, buffer_f32);
                var __z = buffer_read(__buf, buffer_f32);
                var __nx = buffer_read(__buf, buffer_f32);
                var __ny = buffer_read(__buf, buffer_f32);
                var __nz = buffer_read(__buf, buffer_f32);
                var __colalpha = buffer_read(__buf, buffer_u32);
                var __u = buffer_read(__buf, buffer_f32);
                var __v = buffer_read(__buf, buffer_f32);
                var __col = __colalpha & 16777215;
                var __alpha = ((__colalpha >> 24) & 255) / 255;
                file_text_write_string(__file, "9 " + string_format(__x, 10, 4) + " " + string_format(__y, 10, 4) + " " + string_format(__z, 10, 4) + " " + string_format(__nx, 10, 4) + " " + string_format(__ny, 10, 4) + " " + string_format(__nz, 10, 4) + " " + string_format(__u, 10, 4) + " " + string_format(__v, 10, 4) + " " + string_format(__col, 10, 4) + " " + string_format(__alpha, 10, 4));
                file_text_writeln(__file);
            }
            
            file_text_write_string(__file, "1 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
        }
    }
    
    if (__ind[UnknownEnum.Value_2] != undefined)
    {
        var __buf = __ind[UnknownEnum.Value_2];
        
        if (__numtriverts > 0)
        {
            file_text_write_string(__file, "0 " + string_format(4, 10, 4) + " 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
            buffer_seek(__buf, buffer_seek_start, 0);
            
            for (var __i = 0; __i < __numtriverts; __i++)
            {
                var __x = buffer_read(__buf, buffer_f32);
                var __y = buffer_read(__buf, buffer_f32);
                var __z = buffer_read(__buf, buffer_f32);
                var __nx = buffer_read(__buf, buffer_f32);
                var __ny = buffer_read(__buf, buffer_f32);
                var __nz = buffer_read(__buf, buffer_f32);
                var __colalpha = buffer_read(__buf, buffer_u32);
                var __u = buffer_read(__buf, buffer_f32);
                var __v = buffer_read(__buf, buffer_f32);
                var __col = __colalpha & 16777215;
                var __alpha = ((__colalpha >> 24) & 255) / 255;
                file_text_write_string(__file, "9 " + string_format(__x, 10, 4) + " " + string_format(__y, 10, 4) + " " + string_format(__z, 10, 4) + " " + string_format(__nx, 10, 4) + " " + string_format(__ny, 10, 4) + " " + string_format(__nz, 10, 4) + " " + string_format(__u, 10, 4) + " " + string_format(__v, 10, 4) + " " + string_format(__col, 10, 4) + " " + string_format(__alpha, 10, 4));
                file_text_writeln(__file);
            }
            
            file_text_write_string(__file, "1 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000 0000000000.0000");
            file_text_writeln(__file);
        }
    }
    
    file_text_close(__file);
}
