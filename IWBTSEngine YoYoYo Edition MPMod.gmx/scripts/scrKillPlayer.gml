//kills the player
//call this from the local player's instance scope only!!!

//if we're in a multiplayer area
if (instance_exists(obj_htme)) {
    //only kill the player if it's the local instance
    if (!htme_isLocal()) exit;
}

if (!global.noDeath)
{
    if (global.gameStarted) //normal death
    {
        audio_play_sound(sndDeath,0,0);
        
        if (!global.muteMusic)  //play death music
        {
            if (global.deathMusicMode == 1) //instantly pause the current music
            {
                audio_pause_sound(global.currentMusic);
                global.gameOverMusic = audio_play_sound(musOnDeath,1,0);
            }
            else if (global.deathMusicMode == 2)    //fade out the current music
            {                
                with (objWorld)
                    event_user(0);  //fades out and stops the current music
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,0);
            }
        }
        
        instance_create(x,y,objBloodEmitter);
        instance_destroy();
        
        instance_create(0,0,objGameOver);
        
        global.death += 1; //increment deaths
            
        scrSaveGame(0); //save death/time
    }
    else    //death in the difficulty select room, restart the room
    {
        instance_destroy();
        
        objWorld.player_djump = 1;
        objWorld.player_xscale = 1;
            
        room_restart();
    }
}
