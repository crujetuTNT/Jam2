vspeed = 0;
hspeed = 0;

if (vspeed == 0 && hspeed == 0 && x<objPlayer.x)
{
	sprite_index = sprSoldierChargeRight;
}
else if(vspeed == 0 && hspeed == 0 && x>objPlayer.x)
{
	sprite_index = sprSoldierChargeLeft;
}