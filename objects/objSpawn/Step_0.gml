if (score >= 20 && objPlayer.bossCreate == false)
{
	generatedBoolean = false;
}

if (generatedBoolean) // es hora de crear?
{
	if (spawnTime) // toca spawnear?
	{
		// Generar numeros aleatorios de franceses
		franceses = random_range(francesesMin, francesesMax);
		
		for (i = 0; i < franceses+1; i += 1)
		{
			// Generar cordenadas aleatorias
			cordX = random_range(1200, 4900);
			cordY = random_range(800, 2900);
		
			// while si esta cerca no haga spawn
			var raycastX = cordX - objPlayer.x;
			var raycastY = cordY - objPlayer.y;
		
			while (raycastX < 1000 &&
				   raycastX > -1000 &&
				   raycastY < 750 &&
				   raycastY > -750)
			{
				cordX = random_range(1200, 10800);
				cordY = random_range(800, 7000);
				
				raycastX = cordX - objPlayer.x;
				raycastY = cordY - objPlayer.y;
			}
		
			// Spawn fuera de camara
			instance_create_depth(cordX, cordY, depth + 1, objSoldier);
			show_debug_message("Enemigo creado "+string(i)+"/"+string(franceses)+" en "+string(cordX)+" / "+string(cordY));
		
		}
		
		// Tiempo aleatorio para la proxima vez
		timeSpawnMax = random_range(timeMinSpawn, timeMaxSpawn);
		
		spawnTime = false;
		alarm[0] = timeSpawnMax;
	}
}
