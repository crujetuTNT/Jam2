alarm[0] = random_range(0, 2);

if (spawnEnemigos)
{
	var enemyCreateBoss = instance_create_depth(x, y-20, depth + 1, objSoldier);
	spawnEnemigos = false;
}