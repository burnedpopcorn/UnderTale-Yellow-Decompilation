if (destroy_self_noloop && !global.dialogue_open)
{
    instance_destroy();
    exit;
}

scr_text();

with (msg)
{
    if (other.current_mail == "Steamworks ID" || other.current_mail == "Martlet's Letter")
    {
        message[0] = "* You cannot drop the#  " + other.current_mail + ".";
        other.destroy_self_noloop = true;
        exit;
    }
    
    message[0] = "* Are you sure you want to#  drop the mail?";
    ch_msg = 0;
    ch[1] = "Yes";
    ch[2] = "No";
    
    if (outcome == 1)
    {
        scr_mail_remove(other.current_mail);
        instance_destroy(other);
    }
    
    if (outcome == 2)
        instance_destroy(other);
}
