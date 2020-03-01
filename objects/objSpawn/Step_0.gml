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
			cordX = random_range(1200, 10800);
			cordY = random_range(800, 7000);
		
			// while si esta cerca no haga spawn
			var raycastX = cordX - objPlayer.x;
			var raycastY = cordY - objPlayer.y;
		
			while (cordX-objPlayer.x < 1000 &&
				   cordX-objPlayer.x > -1000 &&
				   cordY-objPlayer.y < 750 &&
				   cordY-objPlayer.y > -750)
			{
				var raycastX = cordX - objPlayer.x;
				var raycastY = cordY - objPlayer.y;
			}
		
			// Spawn fuera de camara
			instance_create_depth(raycastX, raycastY, depth + 1, objSoldier);
			show_debug_message("Enemigo creado "+string(i)+"/"+string(franceses)+" en "+string(raycastX)+" / "+string(raycastY));
		
		}
		
		// Tiempo aleatorio para la proxima vez
		timeSpawnMax = random_range(timeMinSpawn, timeMaxSpawn);
		
		spawnTime = false;
		alarm[0] = timeSpawnMax;
	}
}
