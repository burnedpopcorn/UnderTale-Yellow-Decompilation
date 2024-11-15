function d3d_model_create()
{
    var tricols, linecols, pointcols, model;
    
    pointcols[0] = -1;
    linecols[0] = -1;
    tricols[0] = -1;
    model = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 65536, -1, 0, 0, 0, 0, 0, pointcols, linecols, tricols, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    return model;
}
