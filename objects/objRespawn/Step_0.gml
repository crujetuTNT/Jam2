if(instance_exists(objBoss))
{
	instance_destroy(objBoss);
}
if keyboard_check(ord("R"))
{
	room_restart();
}