event_inherited();
fortune = false;
fortune_ready = false;
can_talk = false;

if (global.geno_complete[3] == true && global.route == 3)
{
    instance_destroy();
    exit;
}