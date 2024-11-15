if (live_call())
    return global.live_result;

draw_alpha = 0;
active = false;
reverse = obj_shadow_master.reverse;
shadow_actor = obj_shadow_master.shadow_actor;
shadow_active = false;
event_perform(ev_step, ev_step_normal);
