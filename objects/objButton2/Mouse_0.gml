instance_destroy(objMarie);
instance_destroy(objMarieNombre);

var marie = instance_create_depth(536, 433, depth + 1, objAgustina);
marie.image_xscale = 2;
marie.image_yscale = 2;
var texto = instance_create_depth(222, 213, depth + 1, objAgustinaNombre);
texto.image_xscale = 3;
texto.image_yscale = 3;

instance_destroy(objButton2);
var boton = instance_create_depth(706, 409, depth + 1, objButton1);
boton.image_xscale = 3;
boton.image_yscale = 3;