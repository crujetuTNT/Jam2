instance_destroy(objAgustina);
instance_destroy(objAgustinaNombre);

var marie = instance_create_depth(536, 433, depth + 1, objMarie);
marie.image_xscale = 8;
marie.image_yscale = 8;
var texto = instance_create_depth(376, 213, depth + 1, objMarieNombre);
texto.image_xscale = 5;
texto.image_yscale = 5;

instance_destroy(objButton1);
var boton = instance_create_depth(222, 409, depth + 1, objButton2);
boton.image_xscale = 3;
boton.image_yscale = 3;