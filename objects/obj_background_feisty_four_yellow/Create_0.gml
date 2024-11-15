pos_card_x[0][0] = 60;
pos_card_y[0][0] = 31;
pos_card_x[0][1] = 60;
pos_card_y[0][1] = 164;
pos_card_x[1][0] = 579;
pos_card_y[1][0] = 31;
pos_card_x[1][1] = 579;
pos_card_y[1][1] = 164;
pos_suit_x[0] = 114;
pos_suit_y[0] = 16;
pos_suit_x[1] = 114;
pos_suit_y[1] = 213;
suit_bnd_x[0] = 106;
suit_bnd_x[1] = 533;
suit_bnd_diff_x = (suit_bnd_x[1] - suit_bnd_x[0]) + 1;
dist_suit_x = 19;
dj_suit_x = 0;
dj_speed_x = 1;
dj_sign_x = -1;
max_dj_suit_x = 2 * dist_suit_x;
max_suit_total = 25;
spin_type = "Nothing";
can_spin[0] = false;
can_spin[1] = false;
angle[0] = 0;
angle[1] = 0;
xscale[0] = 1;
xscale[1] = 1;
side[0] = 0;
side[1] = 0;
suit[0][0] = "Club";
suit[0][1] = "Club";
suit[1][0] = "Club";
suit[1][1] = "Club";

for (i = 0; i <= 1; i++)
{
    sign_modifier[i] = 1;
    time_elapsed[i] = 0;
    time_increase[i] = 1;
}

sprite_card_club = spr_background_feisty_four_card_club_ed;
sprite_card_diamond = spr_background_feisty_four_card_diamond_moray;
sprite_card_heart = spr_background_feisty_four_card_heart_mooch;
sprite_card_spade = spr_background_feisty_four_card_spade_ace;
sprite_suit_club = spr_background_feisty_four_suit_club_ed;
sprite_suit_diamond = spr_background_feisty_four_suit_diamond_moray;
sprite_suit_heart = spr_background_feisty_four_suit_heart_mooch;
sprite_suit_spade = spr_background_feisty_four_suit_spade_ace;
