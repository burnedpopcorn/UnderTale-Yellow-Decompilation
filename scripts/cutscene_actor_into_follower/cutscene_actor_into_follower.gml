function cutscene_actor_into_follower()
{
    if (global.party_member == -4)
    {
        cutscene_advance();
        return false;
    }
    
    instance_create(actor_follower.x, actor_follower.y, global.party_member);
    instance_destroy(actor_follower);
    cutscene_advance();
    return true;
}
