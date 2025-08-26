function object_set_depth(arg0, arg1)
{
    var objID = arg0;
    
    if (object_exists(objID))
    {
        with (objID)
            global.__objectID2Depth[id] = arg1;
    }
}
