function scr_item(arg0)
{
    nm = arg0;
    
    for (var i = 1; i <= 8; i++)
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
