id_dunebud_attack = global.id_store;
global.id_store = id;

with (id_dunebud_attack)
    id_dunebud_particles = global.id_store;

sprite_particles[0] = 1836;
sprite_particles[1] = 1824;
sprite_index = sprite_particles[id_dunebud_attack.side];
image_speed = 1/3;
