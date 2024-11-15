function scr_path_jump_end()
{
    if (path_position >= 1)
    {
        path_delete(jump_path);
        return true;
    }
    
    return false;
}
