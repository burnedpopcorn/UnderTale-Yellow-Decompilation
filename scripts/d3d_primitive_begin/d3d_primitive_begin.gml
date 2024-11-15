function d3d_primitive_begin(argument0)
{
    if (global.__d3dPrimKind != -1)
        show_debug_message("ERROR : cannot begin a primitive before end called on previous");
    
    global.__d3dPrimKind = argument0;
    global.__d3dPrimTex = -1;
    vertex_begin(global.__d3dPrimBuffer, global.__d3dPrimVF);
}
