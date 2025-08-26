function scr_item_exists_check(arg0)
{
    for (var i = 1; i <= 8; i += 1)
    {
        if (global.item_slot[i] == arg0)
        {
            return true;
            exit;
            break;
        }
        else if (i == 8)
        {
            return false;
        }
    }
}
