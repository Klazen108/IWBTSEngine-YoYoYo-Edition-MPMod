///flips the current gravity

//set gravity
objWorld.grav = -objWorld.grav;

//flip the player
with (scrGetLocalPlayer())
{
    djump = 1;
    vspeed = 0;
    
    jump = 8.5 * objWorld.grav;
    jump2 = 7 * objWorld.grav;
    gravity = 0.4 * objWorld.grav;
    
    scrSetPlayerMask();
    
    y += 4 * objWorld.grav;
}
