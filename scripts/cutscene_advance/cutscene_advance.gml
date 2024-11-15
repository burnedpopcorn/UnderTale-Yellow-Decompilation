function cutscene_advance()
{
    if (argument_count > 0)
        scene = argument[0];
    else
        scene++;
    
    event_perform(ev_other, ev_user0);
}
