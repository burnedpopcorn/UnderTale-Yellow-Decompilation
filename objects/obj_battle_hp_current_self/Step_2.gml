var hp_current_self_clamp = clamp(global.current_hp_self, 0, global.max_hp_self);
image_xscale = (hp_current_self_clamp + (global.max_hp_self / 20)) / 20;
