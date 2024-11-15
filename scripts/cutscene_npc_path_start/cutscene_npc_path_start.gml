function cutscene_npc_path_start(argument0, argument1, argument2)
{
    with (argument0)
    {
        if (path_position >= 1)
        {
            path_position = 0;
            path_end();
            
            with (other)
                cutscene_advance();
            
            return true;
        }
        
        if (path_index != argument1)
            path_start(argument1, argument2, path_action_stop, false);
    }
}
