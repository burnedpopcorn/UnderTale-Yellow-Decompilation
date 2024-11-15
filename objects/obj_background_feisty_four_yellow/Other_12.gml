half_spin[0] = -1;
half_spin[1] = -1;

if (spin_type == "Moray Solo 1")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Diamond";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}
else if (spin_type == "Ace Solo 1")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Spade";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}
else if (spin_type == "Mooch Solo 1")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Heart";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}
else if (spin_type == "Ed Solo 1")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Club";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}
else if (spin_type == "Moray Solo 2")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Diamond";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}
else if (spin_type == "Ace Solo 2")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Spade";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}
else if (spin_type == "Mooch Solo 2")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Heart";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}
else if (spin_type == "Ed Moray Duo Ed")
{
    suit[1][1] = "Club";
    time_max[1] = 60;
    half_spin[1] = 3;
}
else if (spin_type == "Ed Moray Duo Moray")
{
    suit[0][1] = "Diamond";
    time_max[0] = 60;
    half_spin[0] = 3;
}
else if (spin_type == "Ace Mooch Duo Ace")
{
    suit[0][1] = "Spade";
    time_max[0] = 60;
    half_spin[0] = 3;
}
else if (spin_type == "Ace Mooch Duo Mooch")
{
    suit[1][1] = "Heart";
    time_max[1] = 60;
    half_spin[1] = 3;
}
else if (spin_type == "Ed Solo 2")
{
    for (i = 0; i <= 1; i++)
    {
        suit[i][1] = "Club";
        time_max[i] = 60;
        half_spin[i] = 3;
    }
}

for (i = 0; i <= 1; i++)
{
    if (half_spin[i] >= 0)
    {
        max_rise[i] = 180 * half_spin[i];
        can_spin[i] = true;
    }
}
