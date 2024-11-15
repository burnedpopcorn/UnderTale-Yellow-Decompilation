function scr_item(argument0)
{
    var i;
    
    nm = argument0;
    
    for (i = 1; i <= 8; i++)
    {
        if (global.item_slot[i] == "Nothing")
        {
            global.item_slot[i] = nm;
            return true;
            break;
        }
        else if (i == 8)
        {
            return false;
        }
    }
}
