function d3d_set_shading()
{
    if (!global.__d3dDeprecatedMessage[0])
    {
        show_debug_message("d3d_set_shading is deprecated as it needs to be done in the shader now");
        global.__d3dDeprecatedMessage[0] = true;
    }
}
