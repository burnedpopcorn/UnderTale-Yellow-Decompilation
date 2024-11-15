function cutscene_dialogue_final_flowey()
{
    if (!instance_exists(obj_dialogue_final_flowey))
    {
        msg = instance_create(0, 0, obj_dialogue_final_flowey);
        
        if (argument_count > 0)
        {
            msg.xx = argument[0];
            msg.yy = argument[1];
        }
    }
    
    if (!global.dialogue_open)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
