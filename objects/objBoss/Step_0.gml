alarm[0] = proximaOleada;

if (spawnEnemigos)
{
	spawnEnemigos = false;
	show_message("Enemigo creado por boss");
	var enemyCreateSoldier = instance_create_depth(x-16, y-20, 0, objSoldier);
	proximaOleada = random_range(timeSpawnMin, timeSpawnMax);
}