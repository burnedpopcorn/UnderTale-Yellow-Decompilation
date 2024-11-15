event_inherited();

if (global.route != 3)
{
    message[0] = "* (It's a big and imposing rock.)";
    message[1] = "* (It seems to be perfectly#  blocking the cave entrance.)";
    message[2] = "* (Passing looks impossible for#  the time being.)";
    message_length = 3;
}
else
{
    message[0] = "* (An annoying boulder blocks the#  cave.)";
    message_length = 1;
}

depth = -y;
