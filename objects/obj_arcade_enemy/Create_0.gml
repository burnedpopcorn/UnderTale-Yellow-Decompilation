image_speed = 0.4;
step = 0;
wait_timer = 10;
arc_enemy_death = false;
arc_enemy_hp = 2;
arc_enemy_hsp = 2;
arc_enemy_hit = false;
arc_enemy_score = 20;
arc_sprite_normal = 497;
arc_sprite_spared = 498;
y_destination = irandom_range(60, 120);

if (x < 140)
    arc_enemy_hsp = 2;
else
    arc_enemy_hsp = -2;
