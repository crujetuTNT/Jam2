// Direction
if(direction > 67 && direction <= 112)
{
	newSprite = sprShootUp;
}
else if(direction > 112 && direction <= 157)
{
	newSprite = sprShootLeftUp;
}
else if(direction > 157 && direction <= 202)
{
	newSprite = sprShootLeft;
}
else if(direction > 202 && direction <= 247)
{
	newSprite = sprShootLeftDown;
}
else if(direction > 247 && direction <= 292)
{
	newSprite = sprShootDown;
}
else if(direction > 292 && direction <= 337)
{
	newSprite = sprShootRightDown;
}
else if(direction > 337 || direction <= 22)
{
	newSprite = sprShootRight;
}
else if(direction > 22 && direction <= 67)
{
	newSprite = sprShootRightUp;
}

// Set sprite
if (sprite_index != newSprite)
{
	sprite_index = newSprite;
}