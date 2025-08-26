function cutscene_npc_path_start(arg0, arg1, arg2)
{
    with (arg0)
    {
        if (path_position >= 1)
        {
            path_position = 0;
            path_end();
            
            with (other)
                cutscene_advance();
            
            return true;
        }
        
        if (path_index != arg1)
            path_start(arg1, arg2, path_action_stop, false);
    }
}
