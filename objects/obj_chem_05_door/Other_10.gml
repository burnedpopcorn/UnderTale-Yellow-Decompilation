var trn;

trn = instance_create(x, y, obj_doorway);

with (trn)
{
    image_xscale = other.image_xscale;
    image_yscale = other.image_yscale;
    nextroom = 199;
    xx = 480;
    yy = 300;
}
