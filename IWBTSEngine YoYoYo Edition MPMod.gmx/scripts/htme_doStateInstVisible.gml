///htme_debugoverlayStateMain();

/*
**  Description:
**      PRIVATE "METHOD" OF obj_htme! That means this script MUST be called with obj_htme!
**
**      Draw debug information of visible instances
**  
**  Usage:
**      <See above>
**
**  Arguments:
**      <None>
**
**  Returns:
**      <Nothing>
**
*/
htme_debugoverlayStateMain();
htme_debugoverlayDrawInstanceTable("VISIBLE INSTANCES",1,all,true);
