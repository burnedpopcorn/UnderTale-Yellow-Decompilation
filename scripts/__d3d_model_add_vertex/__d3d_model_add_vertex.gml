function __d3d_model_add_vertex(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9)
{
    var m, i, uv_i, colarrayi, colnum, colarray, b, uvb, globalcol, c;
    
    m = argument0;
    i = UnknownEnum.Value_2;
    uv_i = UnknownEnum.Value_5;
    colarrayi = UnknownEnum.Value_18;
    colnum = UnknownEnum.Value_15;
    
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
    
    colarray = m[colarrayi];
    b = m[i];
    
    if (b == undefined)
    {
        b = buffer_create(36, buffer_grow, 1);
        array_set(m, i, b);
    }
    
    uvb = m[uv_i];
    
    if (uvb == undefined)
    {
        uvb = buffer_create(8, buffer_grow, 1);
        array_set(m, uv_i, uvb);
    }
    
    globalcol = false;
    
    if (argument7 == 65536)
        globalcol = true;
    
    c = m[UnknownEnum.Value_11];
    
    switch (m[UnknownEnum.Value_12])
    {
        case 1:
        case 2:
        case 4:
            buffer_write(b, buffer_f32, argument1);
            buffer_write(b, buffer_f32, argument2);
            buffer_write(b, buffer_f32, argument3);
            buffer_write(b, buffer_f32, argument4);
            buffer_write(b, buffer_f32, argument5);
            buffer_write(b, buffer_f32, argument6);
            buffer_write(b, buffer_u32, argument7);
            buffer_write(b, buffer_f32, argument8);
            buffer_write(b, buffer_f32, argument9);
            buffer_write(uvb, buffer_f32, argument8);
            buffer_write(uvb, buffer_f32, argument9);
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
            
            array_set(m, UnknownEnum.Value_19, argument1);
            array_set(m, UnknownEnum.Value_20, argument2);
            array_set(m, UnknownEnum.Value_21, argument3);
            array_set(m, UnknownEnum.Value_22, argument4);
            array_set(m, UnknownEnum.Value_23, argument5);
            array_set(m, UnknownEnum.Value_24, argument6);
            array_set(m, UnknownEnum.Value_25, argument7);
            array_set(m, UnknownEnum.Value_26, argument8);
            array_set(m, UnknownEnum.Value_27, argument9);
            buffer_write(b, buffer_f32, argument1);
            buffer_write(b, buffer_f32, argument2);
            buffer_write(b, buffer_f32, argument3);
            buffer_write(b, buffer_f32, argument4);
            buffer_write(b, buffer_f32, argument5);
            buffer_write(b, buffer_f32, argument6);
            buffer_write(b, buffer_u32, argument7);
            buffer_write(b, buffer_f32, argument8);
            buffer_write(b, buffer_f32, argument9);
            buffer_write(uvb, buffer_f32, argument8);
            buffer_write(uvb, buffer_f32, argument9);
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
            array_set(m, UnknownEnum.Value_28, argument1);
            array_set(m, UnknownEnum.Value_29, argument2);
            array_set(m, UnknownEnum.Value_30, argument3);
            array_set(m, UnknownEnum.Value_31, argument4);
            array_set(m, UnknownEnum.Value_32, argument5);
            array_set(m, UnknownEnum.Value_33, argument6);
            array_set(m, UnknownEnum.Value_34, argument7);
            array_set(m, UnknownEnum.Value_35, argument8);
            array_set(m, UnknownEnum.Value_36, argument9);
            buffer_write(b, buffer_f32, argument1);
            buffer_write(b, buffer_f32, argument2);
            buffer_write(b, buffer_f32, argument3);
            buffer_write(b, buffer_f32, argument4);
            buffer_write(b, buffer_f32, argument5);
            buffer_write(b, buffer_f32, argument6);
            buffer_write(b, buffer_u32, argument7);
            buffer_write(b, buffer_f32, argument8);
            buffer_write(b, buffer_f32, argument9);
            buffer_write(uvb, buffer_f32, argument8);
            buffer_write(uvb, buffer_f32, argument9);
            
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
                array_set(m, UnknownEnum.Value_19, argument1);
                array_set(m, UnknownEnum.Value_20, argument2);
                array_set(m, UnknownEnum.Value_21, argument3);
                array_set(m, UnknownEnum.Value_22, argument4);
                array_set(m, UnknownEnum.Value_23, argument5);
                array_set(m, UnknownEnum.Value_24, argument6);
                array_set(m, UnknownEnum.Value_25, argument7);
                array_set(m, UnknownEnum.Value_26, argument8);
                array_set(m, UnknownEnum.Value_27, argument9);
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
            
            array_set(m, UnknownEnum.Value_28, argument1);
            array_set(m, UnknownEnum.Value_29, argument2);
            array_set(m, UnknownEnum.Value_30, argument3);
            array_set(m, UnknownEnum.Value_31, argument4);
            array_set(m, UnknownEnum.Value_32, argument5);
            array_set(m, UnknownEnum.Value_33, argument6);
            array_set(m, UnknownEnum.Value_34, argument7);
            array_set(m, UnknownEnum.Value_35, argument8);
            array_set(m, UnknownEnum.Value_36, argument9);
            buffer_write(b, buffer_f32, argument1);
            buffer_write(b, buffer_f32, argument2);
            buffer_write(b, buffer_f32, argument3);
            buffer_write(b, buffer_f32, argument4);
            buffer_write(b, buffer_f32, argument5);
            buffer_write(b, buffer_f32, argument6);
            buffer_write(b, buffer_u32, argument7);
            buffer_write(b, buffer_f32, argument8);
            buffer_write(b, buffer_f32, argument9);
            buffer_write(uvb, buffer_f32, argument8);
            buffer_write(uvb, buffer_f32, argument9);
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
