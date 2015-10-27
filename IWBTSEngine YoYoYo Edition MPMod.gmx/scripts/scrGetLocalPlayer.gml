//find the local player instance
var player_object = noone;
if (instance_exists(obj_htme)) { //multiplayer mode
    with (objPlayerMP) if (htme_isLocal()) player_object=self.id;
} else { //singleplayer mode
    player_object = objPlayer;
}

return player_object;
