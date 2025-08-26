function __d3d_model_add_vertex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
{
    var m = arg0;
    var i = UnknownEnum.Value_2;
    var uv_i = UnknownEnum.Value_5;
    var colarrayi = UnknownEnum.Value_18;
    var colnum = UnknownEnum.Value_15;
    
    switch (m[UnknownEnum.Value_12])
    {
        case 1:
            i = UnknownEnum.Value_0;
            uv_i = UnknownEnum.Value_3;
            colarrayi = UnknownEnum.Value_16;
            colnum = UnknownEnum.Value_13;
            break;
        
        case 2:
        case 3:
            i = UnknownEnum.Value_1;
            uv_i = UnknownEnum.Value_4;
            colarrayi = UnknownEnum.Value_17;
            colnum = UnknownEnum.Value_14;
            break;
    }
    
    var colarray = m[colarrayi];
    var b = m[i];
    
    if (b == undefined)
    {
        b = buffer_create(36, buffer_grow, 1);
        array_set(m, i, b);
    }
    
    var uvb = m[uv_i];
    
    if (uvb == undefined)
    {
        uvb = buffer_create(8, buffer_grow, 1);
        array_set(m, uv_i, uvb);
    }
    
    var globalcol = false;
    
    if (arg7 == 65536)
        globalcol = true;
    
    var c = m[UnknownEnum.Value_11];
    
    switch (m[UnknownEnum.Value_12])
    {
        case 1:
        case 2:
        case 4:
            buffer_write(b, buffer_f32, arg1);
            buffer_write(b, buffer_f32, arg2);
            buffer_write(b, buffer_f32, arg3);
            buffer_write(b, buffer_f32, arg4);
            buffer_write(b, buffer_f32, arg5);
            buffer_write(b, buffer_f32, arg6);
            buffer_write(b, buffer_u32, arg7);
            buffer_write(b, buffer_f32, arg8);
            buffer_write(b, buffer_f32, arg9);
            buffer_write(uvb, buffer_f32, arg8);
            buffer_write(uvb, buffer_f32, arg9);
            c++;
            
            if (globalcol)
            {
                colarray[m[colnum]] = buffer_tell(b) - 12;
                array_set_post(m, colnum, array_get(m, colnum) + 1);
            }
            
            break;
        
        case 3:
            if (c >= 2)
            {
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_19]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_20]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_21]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_22]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_23]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_24]);
                buffer_write(b, buffer_u32, m[UnknownEnum.Value_25]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_26]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_27]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_26]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_27]);
                c++;
                
                if (globalcol)
                {
                    colarray[m[colnum]] = buffer_tell(b) - 12;
                    array_set_post(m, colnum, array_get(m, colnum) + 1);
                }
            }
            
            array_set(m, UnknownEnum.Value_19, arg1);
            array_set(m, UnknownEnum.Value_20, arg2);
            array_set(m, UnknownEnum.Value_21, arg3);
            array_set(m, UnknownEnum.Value_22, arg4);
            array_set(m, UnknownEnum.Value_23, arg5);
            array_set(m, UnknownEnum.Value_24, arg6);
            array_set(m, UnknownEnum.Value_25, arg7);
            array_set(m, UnknownEnum.Value_26, arg8);
            array_set(m, UnknownEnum.Value_27, arg9);
            buffer_write(b, buffer_f32, arg1);
            buffer_write(b, buffer_f32, arg2);
            buffer_write(b, buffer_f32, arg3);
            buffer_write(b, buffer_f32, arg4);
            buffer_write(b, buffer_f32, arg5);
            buffer_write(b, buffer_f32, arg6);
            buffer_write(b, buffer_u32, arg7);
            buffer_write(b, buffer_f32, arg8);
            buffer_write(b, buffer_f32, arg9);
            buffer_write(uvb, buffer_f32, arg8);
            buffer_write(uvb, buffer_f32, arg9);
            c++;
            
            if (globalcol)
            {
                colarray[m[colnum]] = buffer_tell(b) - 12;
                array_set_post(m, colnum, array_get(m, colnum) + 1);
            }
            
            break;
        
        case 5:
            if (c >= 3)
            {
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_19]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_20]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_21]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_22]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_23]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_24]);
                buffer_write(b, buffer_u32, m[UnknownEnum.Value_25]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_26]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_27]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_26]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_27]);
                c++;
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_28]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_29]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_30]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_31]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_32]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_33]);
                buffer_write(b, buffer_u32, m[UnknownEnum.Value_34]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_35]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_36]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_35]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_36]);
                c++;
                
                if (globalcol)
                {
                    colarray[m[colnum]] = buffer_tell(b) - 48;
                    array_set_post(m, colnum, array_get(m, colnum) + 1);
                    colarray[m[colnum]] = buffer_tell(b) - 12;
                    array_set_post(m, colnum, array_get(m, colnum) + 1);
                }
            }
            
            array_set(m, UnknownEnum.Value_19, m[UnknownEnum.Value_28]);
            array_set(m, UnknownEnum.Value_20, m[UnknownEnum.Value_29]);
            array_set(m, UnknownEnum.Value_21, m[UnknownEnum.Value_30]);
            array_set(m, UnknownEnum.Value_22, m[UnknownEnum.Value_31]);
            array_set(m, UnknownEnum.Value_23, m[UnknownEnum.Value_32]);
            array_set(m, UnknownEnum.Value_24, m[UnknownEnum.Value_33]);
            array_set(m, UnknownEnum.Value_25, m[UnknownEnum.Value_34]);
            array_set(m, UnknownEnum.Value_26, m[UnknownEnum.Value_35]);
            array_set(m, UnknownEnum.Value_27, m[UnknownEnum.Value_36]);
            array_set(m, UnknownEnum.Value_28, arg1);
            array_set(m, UnknownEnum.Value_29, arg2);
            array_set(m, UnknownEnum.Value_30, arg3);
            array_set(m, UnknownEnum.Value_31, arg4);
            array_set(m, UnknownEnum.Value_32, arg5);
            array_set(m, UnknownEnum.Value_33, arg6);
            array_set(m, UnknownEnum.Value_34, arg7);
            array_set(m, UnknownEnum.Value_35, arg8);
            array_set(m, UnknownEnum.Value_36, arg9);
            buffer_write(b, buffer_f32, arg1);
            buffer_write(b, buffer_f32, arg2);
            buffer_write(b, buffer_f32, arg3);
            buffer_write(b, buffer_f32, arg4);
            buffer_write(b, buffer_f32, arg5);
            buffer_write(b, buffer_f32, arg6);
            buffer_write(b, buffer_u32, arg7);
            buffer_write(b, buffer_f32, arg8);
            buffer_write(b, buffer_f32, arg9);
            buffer_write(uvb, buffer_f32, arg8);
            buffer_write(uvb, buffer_f32, arg9);
            
            if (globalcol)
            {
                colarray[m[colnum]] = buffer_tell(b) - 12;
                array_set_post(m, colnum, array_get(m, colnum) + 1);
            }
            
            c++;
            break;
        
        case 6:
            if (c == 0)
            {
                array_set(m, UnknownEnum.Value_19, arg1);
                array_set(m, UnknownEnum.Value_20, arg2);
                array_set(m, UnknownEnum.Value_21, arg3);
                array_set(m, UnknownEnum.Value_22, arg4);
                array_set(m, UnknownEnum.Value_23, arg5);
                array_set(m, UnknownEnum.Value_24, arg6);
                array_set(m, UnknownEnum.Value_25, arg7);
                array_set(m, UnknownEnum.Value_26, arg8);
                array_set(m, UnknownEnum.Value_27, arg9);
            }
            
            if (c >= 3)
            {
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_19]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_20]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_21]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_22]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_23]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_24]);
                buffer_write(b, buffer_u32, m[UnknownEnum.Value_25]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_26]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_27]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_26]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_27]);
                c++;
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_28]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_29]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_30]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_31]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_32]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_33]);
                buffer_write(b, buffer_u32, m[UnknownEnum.Value_34]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_35]);
                buffer_write(b, buffer_f32, m[UnknownEnum.Value_36]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_35]);
                buffer_write(uvb, buffer_f32, m[UnknownEnum.Value_36]);
                c++;
                
                if (globalcol)
                {
                    colarray[m[colnum]] = buffer_tell(b) - 48;
                    array_set_post(m, colnum, array_get(m, colnum) + 1);
                    colarray[m[colnum]] = buffer_tell(b) - 12;
                    array_set_post(m, colnum, array_get(m, colnum) + 1);
                }
            }
            
            array_set(m, UnknownEnum.Value_28, arg1);
            array_set(m, UnknownEnum.Value_29, arg2);
            array_set(m, UnknownEnum.Value_30, arg3);
            array_set(m, UnknownEnum.Value_31, arg4);
            array_set(m, UnknownEnum.Value_32, arg5);
            array_set(m, UnknownEnum.Value_33, arg6);
            array_set(m, UnknownEnum.Value_34, arg7);
            array_set(m, UnknownEnum.Value_35, arg8);
            array_set(m, UnknownEnum.Value_36, arg9);
            buffer_write(b, buffer_f32, arg1);
            buffer_write(b, buffer_f32, arg2);
            buffer_write(b, buffer_f32, arg3);
            buffer_write(b, buffer_f32, arg4);
            buffer_write(b, buffer_f32, arg5);
            buffer_write(b, buffer_f32, arg6);
            buffer_write(b, buffer_u32, arg7);
            buffer_write(b, buffer_f32, arg8);
            buffer_write(b, buffer_f32, arg9);
            buffer_write(uvb, buffer_f32, arg8);
            buffer_write(uvb, buffer_f32, arg9);
            c++;
            
            if (globalcol)
            {
                colarray[m[colnum]] = buffer_tell(b) - 12;
                array_set_post(m, colnum, array_get(m, colnum) + 1);
            }
            
            break;
    }
    
    array_set(m, UnknownEnum.Value_11, c);
    array_set(m, colarrayi, colarray);
}
