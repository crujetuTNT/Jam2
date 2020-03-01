if (spawnEnemigos)
{
	var enemyCreateSoldier = instance_create_depth(x, y+20, 0, objSoldier);
	proximaOleada = random_range(timeSpawnMin, timeSpawnMax);
	show_debug_message("proxima oleada: "+string(proximaOleada));
	
	spawnEnemigos = false;
	alarm[0] = proximaOleada;
}