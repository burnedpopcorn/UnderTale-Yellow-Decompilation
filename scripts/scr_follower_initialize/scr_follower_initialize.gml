function scr_follower_initialize()
{
    with (global.party_member)
        event_perform(ev_create, 0);
}
