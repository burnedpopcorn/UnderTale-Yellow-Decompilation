scr_text();

if (scr_determine_item_droppable_yellow(current_item) == true)
{
    with (msg)
    {
        message[0] = "* Are you sure you want to#  drop the " + other.current_item + "?";
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            scr_item_remove(other.current_item);
            instance_destroy(other);
        }
        
        if (outcome == 2)
            instance_destroy(other);
    }
}
else
{
    with (msg)
        message[0] = "* You cannot drop the#  " + other.current_item + ".";
    
    if (!global.dialogue_open)
        instance_destroy();
}
