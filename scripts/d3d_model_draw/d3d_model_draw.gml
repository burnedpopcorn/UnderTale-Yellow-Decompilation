function d3d_model_draw(argument0, argument1, argument2, argument3, argument4)
{
    var m, tex, vertsize, vertuvoffset, texuvs, uspan, vspan, ubase, vbase, numverts, __uvpos, __src, __dest, __i, __u, __v, currColour, __numPointCols, __numLineCols, __numTriCols, __offsets, mW, mT, mNew, __oldrep;
    
    m = argument0;
    tex = argument4;
    vertsize = 36;
    vertuvoffset = 28;
    
    if (tex != -1 && tex != m[UnknownEnum.Value_9])
    {
        texuvs = texture_get_uvs(tex);
        uspan = texuvs[2] - texuvs[0];
        vspan = texuvs[3] - texuvs[1];
        ubase = texuvs[0];
        vbase = texuvs[1];
        
        if (m[UnknownEnum.Value_0] != undefined && m[UnknownEnum.Value_3] != undefined)
        {
            numverts = buffer_tell(m[UnknownEnum.Value_3]) / 8;
            buffer_seek(m[UnknownEnum.Value_3], buffer_seek_start, 0);
            __uvpos = vertuvoffset;
            __src = m[UnknownEnum.Value_3];
            __dest = m[UnknownEnum.Value_0];
            
            for (__i = 0; __i < numverts; __i++)
            {
                __u = buffer_read(__src, buffer_f32);
                __v = buffer_read(__src, buffer_f32);
                __u = (__u * uspan) + ubase;
                __v = (__v * vspan) + vbase;
                buffer_poke(__dest, __uvpos, buffer_f32, __u);
                buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
                __uvpos += vertsize;
            }
        }
        
        if (m[UnknownEnum.Value_1] != undefined && m[UnknownEnum.Value_4] != undefined)
        {
            numverts = buffer_tell(m[UnknownEnum.Value_4]) / 8;
            buffer_seek(m[UnknownEnum.Value_4], buffer_seek_start, 0);
            __uvpos = vertuvoffset;
            __src = m[UnknownEnum.Value_4];
            __dest = m[UnknownEnum.Value_1];
            
            for (__i = 0; __i < numverts; __i++)
            {
                __u = buffer_read(__src, buffer_f32);
                __v = buffer_read(__src, buffer_f32);
                __u = (__u * uspan) + ubase;
                __v = (__v * vspan) + vbase;
                buffer_poke(__dest, __uvpos, buffer_f32, __u);
                buffer_poke(__dest, __uvpos + 4, buffer_f32, __v);
                __uvpos += vertsize;
            }
        }
        
        if (m[UnknownEnum.Value_2] != undefined && m[UnknownEnum.Value_5] != undefined)
        {
            numverts = buffer_tell(m[UnknownEnum.Value_5]) / 8;
            buffer_seek(m[UnknownEnum.Value_5], buffer_seek_start, 0);
            __uvpos = vertuvoffset;
            __src = m[UnknownEnum.Value_5];
            __dest = m[UnknownEnum.Value_2];
            
            for (__i = 0; __i < numverts; __i++)
            {
                __u = buffer_read(__src, buffer_f32);
                __v = buffer_read(__src, buffer_f32);
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
    
    currColour = draw_get_colour() | ((draw_get_alpha() * 255) << 24);
    
    if (currColour != m[UnknownEnum.Value_10] && (m[UnknownEnum.Value_13] > 0 || m[UnknownEnum.Value_14] > 0 || m[UnknownEnum.Value_15] > 0))
    {
        __numPointCols = m[UnknownEnum.Value_13];
        __numLineCols = m[UnknownEnum.Value_14];
        __numTriCols = m[UnknownEnum.Value_15];
        
        if (m[UnknownEnum.Value_0] != undefined)
        {
            __offsets = m[UnknownEnum.Value_16];
            __dest = m[UnknownEnum.Value_0];
            
            for (__i = 0; __i < __numPointCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
        }
        
        if (m[UnknownEnum.Value_1] != undefined)
        {
            __offsets = m[UnknownEnum.Value_17];
            __dest = m[UnknownEnum.Value_1];
            
            for (__i = 0; __i < __numLineCols; __i++)
                buffer_poke(__dest, __offsets[__i], buffer_u32, currColour);
        }
        
        if (m[UnknownEnum.Value_2] != undefined)
        {
            __offsets = m[UnknownEnum.Value_18];
            __dest = m[UnknownEnum.Value_2];
            
            for (__i = 0; __i < __numTriCols; __i++)
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
    
    mW = matrix_get(2);
    mT = matrix_build(argument1, argument2, argument3, 0, 0, 0, 1, 1, 1);
    mNew = matrix_multiply(mT, mW);
    matrix_set(2, mNew);
    __oldrep = gpu_get_texrepeat();
    gpu_set_texrepeat(true);
    
    if (m[UnknownEnum.Value_2] != undefined)
    {
        if (m[UnknownEnum.Value_8] == undefined)
        {
            array_set(m, UnknownEnum.Value_8, vertex_create_buffer_from_buffer(m[UnknownEnum.Value_2], global.__d3dPrimVF));
            vertex_freeze(m[UnknownEnum.Value_8]);
        }
        
        vertex_submit(m[UnknownEnum.Value_8], pr_trianglelist, argument4);
    }
    
    if (m[UnknownEnum.Value_1] != undefined)
    {
        if (m[UnknownEnum.Value_7] == undefined)
        {
            array_set(m, UnknownEnum.Value_7, vertex_create_buffer_from_buffer(m[UnknownEnum.Value_1], global.__d3dPrimVF));
            vertex_freeze(m[UnknownEnum.Value_7]);
        }
        
        vertex_submit(m[UnknownEnum.Value_7], pr_linelist, argument4);
    }
    
    if (m[UnknownEnum.Value_0] != undefined)
    {
        if (m[UnknownEnum.Value_6] == undefined)
        {
            array_set(m, UnknownEnum.Value_6, vertex_create_buffer_from_buffer(m[UnknownEnum.Value_0], global.__d3dPrimVF));
            vertex_freeze(m[UnknownEnum.Value_6]);
        }
        
        vertex_submit(m[UnknownEnum.Value_6], pr_pointlist, argument4);
    }
    
    matrix_set(2, mW);
    gpu_set_texrepeat(__oldrep);
}
