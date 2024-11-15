function object_get_depth(argument0)
{
    var objID, ret;
    
    objID = argument0;
    ret = 0;
    
    if (objID >= 0 && objID < array_length_1d(global.__objectID2Depth))
        ret = global.__objectID2Depth[objID];
    
    return ret;
}
