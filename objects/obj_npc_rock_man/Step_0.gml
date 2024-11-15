event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        switch (other.npc_flag)
        {
            case 0:
                color = true;
                col_modif[0] = 65535;
                message[0] = "* Visiting from the Wild East,#  are you?";
                message_col[0][0] = "                    Wild East            ";
                message[1] = "* I must say, I haven't seen your#  face around these parts.";
                message[2] = "* Welcome to my abode, young one!";
                message[3] = "* As you may notice, I have a#  knack for the preservation of#  life.";
                message[4] = "* Grass is very rare here.";
                message[5] = "* For any to grow, there must be#  a source of water close by or#  amongst the ground.";
                message[6] = "* I try my best to keep my own#  little patch happy.";
                message[7] = "* It's one of my many hobbies!";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* The Dunes didn't used to be#  like this.";
                message[1] = "* Rivers, trees, and plenty of#  grass painted the area; lush#  and beautiful.";
                message[2] = "* This was years ago, of course.#  The memories often escape me.";
                message[3] = "* It's hard to blame anyone for#  the loss of those things.";
                message[4] = "* Poor miners had no idea such a#  large stone could kill an#  ecosystem.";
                message[5] = "* No one did. It was a new#  discovery at the time.";
                message[6] = "* I suppose it was nature's will.";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* I began a small project south#  of here.";
                message[1] = "* Planted a sapling in an empty#  shelter.";
                message[2] = "* The townsfolk and I watch over#  it, giving it water every day.";
                message[3] = "* If we're lucky, it will grow#  into something wonderful. A#  glimpse of days gone by.";
                other.npc_flag++;
                break;
            
            case 3:
                message[0] = "* Enjoy the rest of your visit,#  \"partner\"!";
                break;
        }
    }
}
