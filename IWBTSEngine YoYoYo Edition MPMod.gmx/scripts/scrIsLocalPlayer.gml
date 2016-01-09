///scrIsLocalPlayer(instance)
//instance is optional - if not supplied checks the current scope.

if (!scrIsMultiplayerMode()) return true;
else {
    var player;
    if (argument_count==1) return argument[0] == scrGetLocalPlayer()
    else return scrGetLocalPlayer() == self.id;
}
