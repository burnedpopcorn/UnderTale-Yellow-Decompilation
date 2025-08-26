function d3d_primitive_begin(arg0)
{
    if (global.__d3dPrimKind != -1)
        show_debug_message("ERROR : cannot begin a primitive before end called on previous");
    
    global.__d3dPrimKind = arg0;
    global.__d3dPrimTex = -1;
    vertex_begin(global.__d3dPrimBuffer, global.__d3dPrimVF);
}
