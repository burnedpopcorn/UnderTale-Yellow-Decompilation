function scr_inventory_check_space()
{
    for (var i = 1; i <= 8; i++)
    {
        if (global.item_slot[i] == "Nothing")
        {
            return true;
            break;
        }
        else if (i == 8)
        {
            return false;
        }
    }
}
