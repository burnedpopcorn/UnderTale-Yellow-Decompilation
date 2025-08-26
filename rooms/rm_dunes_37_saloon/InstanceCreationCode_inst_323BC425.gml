if (global.route == 1 && global.sworks_flag[0] > 0)
{
    instance_destroy();
    exit;
}

if (global.route == 3)
{
    message[0] = "* (The stage.)";
    exit;
}

message[0] = "* (A stage ready for#  performance.)";
message[1] = "* (Too bad there aren't any gigs#  today.)";
