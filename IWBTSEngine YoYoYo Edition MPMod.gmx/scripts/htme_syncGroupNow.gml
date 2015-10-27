///htme_syncGroupNow(sync group name)
/*
**  Description:
**      Forces the synchronization of a variable group with the given name.
**  
**  Usage:
**      <see above>
**
**  Arguments:
**      sync group name    string         Name of the group to sync.
**
**  Returns:
**      <nothing>
**
*/

with obj_htme {
    if (!self.isConnected) exit;
    
    //This will loop through all var groups or local var groups if client.
    for(var i=0; i<ds_list_size(self.grouplist_local); i+=1) {
        var group = ds_list_find_value(grouplist_local,i);
        // Set to sync the group now
        if (group[? "name"] == argument0) {
            group[? "__counter"] = 0;
        }      
    }
}

