function d3d_model_draw(arg0, arg1, arg2, arg3, arg4)
{
    var m = arg0;
    var tex = arg4;
    var vertsize = 36;
    var vertuvoffset = 28;
    
    if (tex != -1 && tex != m[UnknownEnum.Value_9])
    {
        var texuvs = texture_get_uvs(tex);
        var uspan = texuvs[2] - texuvs[0];
        var vspan = texuvs[3] - texuvs[1];
        var ubase = texuvs[0];
        var vbase = texuvs[1];
        
        if (m[UnknownEnum.Value_0] != undefined && m[UnknownEnum.Value_3] != undefined)
        {
            var numverts = buffer_tell(m[UnknownEnum.Value_3]) / 8;
            buffer_seek(m[UnknownEnum.Value_3], buffer_seek_start, 0);
            var __uvpos = vertuvoffset;
            var __src = m[UnknownEnum.Value_3];
            var __dest = m[UnknownEnum.Value_0];
            
            for (var __i = 0; __i < numverts; __i++)
            {
                var __u = buffer_read(__src, buffer_f32);
                var __v = buffer_read(__src, buffer_f32);
                __u = (__u * uspan) + ubase;
                __v = (__v * vspan) + vbase;
                buffer_poke(__dest, __uvpos, buffer_f32, __u);
                buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
                __uvpos += vertsize;
            }
        }
        
        if (m[UnknownEnum.Value_1] != undefined && m[UnknownEnum.Value_4] != undefined)
        {
            var numverts = buffer_tell(m[UnknownEnum.Value_4]) / 8;
            buffer_seek(m[UnknownEnum.Value_4], buffer_seek_start, 0);
            var __uvpos = vertuvoffset;
            var __src = m[UnknownEnum.Value_4];
            var __dest = m[UnknownEnum.Value_1];
            
            for (var __i = 0; __i < numverts; __i++)
            {
                var __u = buffer_read(__src, buffer_f32);
                var __v = buffer_read(__src, buffer_f32);
                __u = (__u * uspan) + ubase;
                __v = (__v * vspan) + vbase;
                buffer_poke(__dest, __uvpos, buffer_f32, __u);
                buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
                __uvpos += vertsize;
            }
        }
        
        if (m[UnknownEnum.Value_2] != undefined && m[UnknownEnum.Value_5] != undefined)
        {
            var numverts = buffer_tell(m[UnknownEnum.Value_5]) / 8;
            buffer_seek(m[UnknownEnum.Value_5], buffer_seek_start, 0);
            var __uvpos = vertuvoffset;
            var __src = m[UnknownEnum.Value_5];
            var __dest = m[UnknownEnum.Value_2];
            
            for (var __i = 0; __i < numverts; __i++)
            {
                var __u = buffer_read(__src, buffer_f32);
                var __v = buffer_read(__src, buffer_f32);
                __u = (__u * uspan) + ubase;
                __v = (__v * vspan) + vbase;
                buffer_poke(__dest, __uvpos, buffer_f32, __u);
                buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
                __uvpos += vertsize;
            }
        }
        
        array_set(m, UnknownEnum.Value_9, tex);
        
        if (m[UnknownEnum.Value_6] != undefined)
        {
            vertex_delete_buffer(m[UnknownEnum.Value_6]);
            array_set(m, UnknownEnum.Value_6, undefined);
        }
        
        if (m[UnknownEnum.Value_7] != undefined)
        {
            vertex_delete_buffer(m[UnknownEnum.Value_7]);
            array_set(m, UnknownEnum.Value_7, undefined);
        }
        
        if (m[UnknownEnum.Value_8] != undefined)
        {
            vertex_delete_buffer(m[UnknownEnum.Value_8]);
            array_set(m, UnknownEnum.Value_8, undefined);
        }
    }
    
    var currColour = draw_get_colour() | ((draw_get_alpha() * 255) << 24);
    
    if (currColour != m[UnknownEnum.Value_10] && (m[UnknownEnum.Value_13] > 0 || m[UnknownEnum.Value_14] > 0 || m[UnknownEnum.Value_15] > 0))
    {
        var __numPointCols = m[UnknownEnum.Value_13];
        var __numLineCols = m[UnknownEnum.Value_14];
        var __numTriCols = m[UnknownEnum.Value_15];
        
        if (m[UnknownEnum.Value_0] != undefined)
        {
            var __offsets = m[UnknownEnum.Value_16];
            var __dest = m[UnknownEnum.Value_0];
            
            for (var __i = 0; __i < __numPointCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
        }
        
        if (m[UnknownEnum.Value_1] != undefined)
        {
            var __offsets = m[UnknownEnum.Value_17];
            var __dest = m[UnknownEnum.Value_1];
            
            for (var __i = 0; __i < __numLineCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
        }
        
        if (m[UnknownEnum.Value_2] != undefined)
        {
            var __offsets = m[UnknownEnum.Value_18];
            var __dest = m[UnknownEnum.Value_2];
            
            for (var __i = 0; __i < __numTriCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
        }
        
        if (m[UnknownEnum.Value_6] != undefined)
        {
            vertex_delete_buffer(m[UnknownEnum.Value_6]);
            array_set(m, UnknownEnum.Value_6, undefined);
        }
        
        if (m[UnknownEnum.Value_7] != undefined)
        {
            vertex_delete_buffer(m[UnknownEnum.Value_7]);
            array_set(m, UnknownEnum.Value_7, undefined);
        }
        
        if (m[UnknownEnum.Value_8] != undefined)
        {
            vertex_delete_buffer(m[UnknownEnum.Value_8]);
            array_set(m, UnknownEnum.Value_8, undefined);
        }
        
        array_set(m, UnknownEnum.Value_10, currColour);
    }
    
    var mW = matrix_get(2);
    var mT = matrix_build(arg1, arg2, arg3, 0, 0, 0, 1, 1, 1);
    var mNew = matrix_multiply(mT, mW);
    matrix_set(2, mNew);
    var __oldrep = gpu_get_texrepeat();
    gpu_set_texrepeat(true);
    
    if (m[UnknownEnum.Value_2] != undefined)
    {
        if (m[UnknownEnum.Value_8] == undefined)
        {
            array_set(m, UnknownEnum.Value_8, vertex_create_buffer_from_buffer(m[UnknownEnum.Value_2], global.__d3dPrimVF));
            vertex_freeze(m[UnknownEnum.Value_8]);
        }
        
        vertex_submit(m[UnknownEnum.Value_8], pr_trianglelist, arg4);
    }
    
    if (m[UnknownEnum.Value_1] != undefined)
    {
        if (m[UnknownEnum.Value_7] == undefined)
        {
            array_set(m, UnknownEnum.Value_7, vertex_create_buffer_from_buffer(m[UnknownEnum.Value_1], global.__d3dPrimVF));
            vertex_freeze(m[UnknownEnum.Value_7]);
        }
        
        vertex_submit(m[UnknownEnum.Value_7], pr_linelist, arg4);
    }
    
    if (m[UnknownEnum.Value_0] != undefined)
    {
        if (m[UnknownEnum.Value_6] == undefined)
        {
            array_set(m, UnknownEnum.Value_6, vertex_create_buffer_from_buffer(m[UnknownEnum.Value_0], global.__d3dPrimVF));
            vertex_freeze(m[UnknownEnum.Value_6]);
        }
        
        vertex_submit(m[UnknownEnum.Value_6], pr_pointlist, arg4);
    }
    
    matrix_set(2, mW);
    gpu_set_texrepeat(__oldrep);
}
