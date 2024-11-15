function scr_follower_into_actor()
{
    if (global.party_member == -4)
        return false;
    
    actor_follower = instance_create(global.party_member.x, global.party_member.y, global.party_member.npc_actor);
    
    with (global.party_member)
    {
        switch (sprite_index)
        {
            case up_sprite:
            case up_sprite_idle:
            case up_sprite_run:
                other.actor_follower.npc_direction = "up";
                other.actor_follower.sprite_index = other.actor_follower.up_sprite;
                break;
            
            case down_sprite:
            case down_sprite_idle:
            case down_sprite_run:
                other.actor_follower.npc_direction = "down";
                other.actor_follower.sprite_index = other.actor_follower.down_sprite;
                break;
            
            case left_sprite:
            case left_sprite_idle:
            case left_sprite_run:
                other.actor_follower.npc_direction = "left";
                other.actor_follower.sprite_index = other.actor_follower.left_sprite;
                break;
            
            case right_sprite:
            case right_sprite_idle:
            case right_sprite_run:
                other.actor_follower.sprite_index = other.actor_follower.right_sprite;
                break;
        }
        
        instance_destroy();
    }
    
    return true;
}
