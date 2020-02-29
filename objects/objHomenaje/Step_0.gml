if (movEstado)
{
	image_xscale += 0.004;
	image_yscale += 0.004;
}
else
{
	image_xscale -= 0.004;
	image_yscale -= 0.004;
}

if (image_xscale <= 1.75)
{
	movEstado = true;
}
else if (image_xscale >= 2.25)
{
	movEstado = false;
}