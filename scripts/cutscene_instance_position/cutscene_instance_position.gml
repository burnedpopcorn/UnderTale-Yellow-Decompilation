function cutscene_instance_position(argument0, argument1, argument2, argument3)
{
    if (argument1 == "x")
    {
        if (argument2 == ">")
        {
            if (argument0.x >= argument3)
            {
                cutscene_advance();
                return true;
            }
        }
        
        if (argument2 == "<")
        {
            if (argument0.x <= argument3)
            {
                cutscene_advance();
                return true;
            }
        }
    }
    
    if (argument1 == "y")
    {
        if (argument2 == ">")
        {
            if (argument0.y >= argument3)
            {
                cutscene_advance();
                return true;
            }
        }
        
        if (argument2 == "<")
        {
            if (argument0.y <= argument3)
            {
                cutscene_advance();
                return true;
            }
        }
    }
    
    return false;
}
