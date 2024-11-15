var footsteps_enabled;

if (obj_pl.x != obj_pl.xprevious || obj_pl.y != obj_pl.yprevious)
{
    footsteps_enabled = true;
    
    if (instance_exists(obj_steamworks_footsteps_collider))
    {
        footsteps_enabled = false;
        
        with (obj_pl)
        {
            if (place_meeting(x, y, obj_steamworks_footsteps_collider))
                footsteps_enabled = true;
        }
    }
    
    if (footsteps_enabled)
    {
        if (!obj_pl.is_sprinting)
        {
            if (footstep_timer == 0)
            {
                audio_play_sound(choose(snd_footstep1, snd_footstep2), 1, 0);
                footstep_timer = 11;
            }
        }
        else if (footstep_timer == 0)
        {
            audio_play_sound(choose(snd_footstep1, snd_footstep2), 1, 0);
            footstep_timer = 10;
        }
        
        if (footstep_timer > 0)
            footstep_timer--;
    }
}
else
{
    footstep_timer = 0;
}

if (instance_exists(obj_npc_parent))
{
    with (obj_npc_parent)
    {
        if (!variable_instance_exists(id, "footstep_timer_npc"))
            footstep_timer_npc = 0;
        
        footsteps_enabled = true;
        
        if (instance_exists(obj_steamworks_footsteps_collider))
        {
            footsteps_enabled = false;
            
            if (place_meeting(x, y, obj_steamworks_footsteps_collider))
                footsteps_enabled = true;
        }
        
        if (object_index == obj_axis_npc)
            footsteps_enabled = false;
        
        if (footsteps_enabled == true)
        {
            if (x != xprevious || y != yprevious)
            {
                if (footstep_timer_npc == 0)
                {
                    audio_play_sound(choose(snd_footstep1, snd_footstep2), 1, 0);
                    footstep_timer_npc = 11;
                }
                
                if (footstep_timer_npc > 0)
                    footstep_timer_npc--;
            }
            else
            {
                footstep_timer_npc = 0;
            }
        }
    }
}

if (global.party_member != -4 && instance_exists(global.party_member))
{
    with (global.party_member)
    {
        footsteps_enabled = true;
        
        if (instance_exists(obj_steamworks_footsteps_collider))
        {
            footsteps_enabled = false;
            
            if (place_meeting(x, y, obj_steamworks_footsteps_collider))
                footsteps_enabled = true;
        }
        
        if (!variable_instance_exists(id, "footstep_timer_follower"))
            footstep_timer_follower = 0;
        
        if (x != xprevious || y != yprevious)
        {
            if (footstep_timer_follower == 0)
            {
                audio_play_sound(choose(snd_footstep1, snd_footstep2), 1, 0);
                footstep_timer_follower = 11;
            }
            
            if (footstep_timer_follower > 0)
                footstep_timer_follower--;
        }
        else
        {
            footstep_timer_follower = 0;
        }
    }
}
