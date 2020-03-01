alarm[0] = random_range(timeSpawnMin, timeSpawnMax);

if (spawnEnemigos)
{
	var enemyCreateBoss = instance_create_depth(x, y-20, depth + 1, objSoldier);
	spawnEnemigos = false;
}