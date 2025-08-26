function cutscene_instance_position(arg0, arg1, arg2, arg3)
{
    if (arg1 == "x")
    {
        if (arg2 == ">")
        {
            if (arg0.x >= arg3)
            {
                cutscene_advance();
                return true;
            }
        }
        
        if (arg2 == "<")
        {
            if (arg0.x <= arg3)
            {
                cutscene_advance();
                return true;
            }
        }
    }
    
    if (arg1 == "y")
    {
        if (arg2 == ">")
        {
            if (arg0.y >= arg3)
            {
                cutscene_advance();
                return true;
            }
        }
        
        if (arg2 == "<")
        {
            if (arg0.y <= arg3)
            {
                cutscene_advance();
                return true;
            }
        }
    }
    
    return false;
}
