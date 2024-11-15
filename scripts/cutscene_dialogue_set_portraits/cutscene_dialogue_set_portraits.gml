function cutscene_dialogue_set_portraits()
{
    var i;
    
    with (msg)
    {
        for (i = 0; i < argument_count; i++)
            prt[i] = argument[i];
    }
    
    return true;
}
