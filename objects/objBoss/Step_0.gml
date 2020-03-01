alarm[0] = random_range(timeSpawnMin, timeSpawnMax);

if (spawnEnemigos)
{
	inst = instance_create(x-20, y, objSoldier);
	spawnEnemigos = false;
}