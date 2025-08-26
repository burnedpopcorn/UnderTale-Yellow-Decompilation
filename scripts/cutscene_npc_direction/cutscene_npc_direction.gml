function cutscene_npc_direction(arg0, arg1)
{
    if (instance_exists(arg0))
    {
        with (arg0)
        {
            npc_direction = arg1;
            
            with (other)
                cutscene_advance();
            
            return true;
        }
    }
    
    return false;
}
