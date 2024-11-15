function scr_item_remove(argument0)
{
    for (i = 1; i <= 8; i += 1)
    {
        if (global.item_slot[i] == argument0)
        {
            while (i < 8)
            {
                global.item_slot[i] = global.item_slot[i + 1];
                i += 1;
            }
            
            global.item_slot[8] = "Nothing";
            return true;
            break;
        }
        else if (i == 8)
        {
            return false;
        }
    }
}
