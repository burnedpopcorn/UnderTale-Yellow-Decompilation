event_inherited();
image_speed = 0.3;

if (interact == 1)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* YOU LISTEN! KNOW CONE HAS PLAN!";
                message[1] = "* GONNA GO TO TOP OF BIG HILL!#  BIG BIG HILL! ";
                message[2] = "* CAN SEE HOTLANDS FROM BIG HILL!";
                message[3] = "* FIRE FAR AWAY NOT HURT KNOW#  CONE!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* KNOW CONE PROUD OF PLAN!";
                message[1] = "* KNOW CONE SHOW INTELLECTUAL#  PROMISE!";
                message[2] = "* AND GET SEE FIRE!";
            }
            
            break;
    }
}
