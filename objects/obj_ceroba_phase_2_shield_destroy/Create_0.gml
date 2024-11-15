image_speed = 0;
image_index = 0;
image_xscale = 2;
image_yscale = 2;
scene = 0;
cutscene_timer = 0;
can_shake = true;
alarm[0] = 2;
shake_timer = 2;

with (obj_battle_enemy_attack_ceroba_phase_2_attack_spawner)
{
    event_user(0);
    instance_destroy(obj_battle_ceroba_phase_1_transformation, false);
}

audio_play_sound(snd_ceroba_shield_break_1, 1, 0);
global.ps = part_system_create();
part_system_depth(global.ps, -1);
global.pt_glass_particles = part_type_create();
part_type_shape(global.pt_glass_particles, 0);
part_type_sprite(global.pt_glass_particles, 821, 0, 0, 0);
part_type_size(global.pt_glass_particles, 1, 1, 0, 0);
part_type_scale(global.pt_glass_particles, 1, 1);
part_type_orientation(global.pt_glass_particles, 0, 359, 0, 0, 0);
part_type_color3(global.pt_glass_particles, 5701887, 5701887, 15128575);
part_type_alpha3(global.pt_glass_particles, 1, 0.5, 0);
part_type_blend(global.pt_glass_particles, 0);
part_type_life(global.pt_glass_particles, 25, 25);
part_type_speed(global.pt_glass_particles, 4, 4, 0, 0);
part_type_direction(global.pt_glass_particles, 45, 135, 0, 0);
part_type_gravity(global.pt_glass_particles, 0.3, 270);
global.pt_Effect2 = part_type_create();
part_type_shape(global.pt_Effect2, 5);
part_type_size(global.pt_Effect2, 0, 0, 0.4, 0);
part_type_scale(global.pt_Effect2, 1, 1);
part_type_orientation(global.pt_Effect2, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect2, 5701887, 5701887, 5701887);
part_type_alpha3(global.pt_Effect2, 0.8, 0.4, 0);
part_type_blend(global.pt_Effect2, 1);
part_type_life(global.pt_Effect2, 20, 20);
part_type_speed(global.pt_Effect2, 0, 0, 0, 0);
part_type_direction(global.pt_Effect2, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect2, 0, 0);
global.pe_glass_particles = part_emitter_create(global.ps);
global.pe_Effect2 = part_emitter_create(global.ps);
