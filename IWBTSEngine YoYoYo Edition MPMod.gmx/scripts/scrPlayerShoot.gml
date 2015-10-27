if (instance_number(objBullet) < 4)
{
    a=instance_create(x,y,objBullet);
    a.hspeed = i_xscale * 16;
    a.player=self.id; //remember which player created this bullet
    audio_play_sound(sndShoot,0,0);
}
