///scrTriggerCheck(trg)
//Checks a trigger flag.
//To be used instead of global.trigger[trg]
//maintains multiplayer sync if in multiplayer mode


if (instance_exists(obj_htme)) { //if multiplayer mode
    var trg_name = "trg_"+string(argument0); 
    if (!is_undefined(htme_globalGet(trg_name))) { //if trigger is defined in multiplayer global variable space
        global.trigger[trg]=htme_globalGet(trg_name); //get the trigger value
    }
}
return global.trigger[argument0];
