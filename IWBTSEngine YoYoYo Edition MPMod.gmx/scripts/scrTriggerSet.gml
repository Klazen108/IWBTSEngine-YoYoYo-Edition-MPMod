///scrTriggerSet(trg,value)
//sets a trigger flag.
//To be used instead of global.trigger[trg] = value
//maintains multiplayer sync if in multiplayer mode

global.trigger[argument0] = argument1;


if (instance_exists(obj_htme)) {
    htme_globalSet("trg_"+string(argument0),argument1,buffer_bool);
}
