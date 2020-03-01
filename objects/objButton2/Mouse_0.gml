instance_destroy(objMarie);
instance_destroy(objMarieNombre);
instance_destroy(objCandado);

var marie = instance_create_depth(536, 433, depth + 1, objAgustina);
marie.image_xscale = 2;
marie.image_yscale = 2;
var texto = instance_create_depth(545, 275, depth + 1, objAgustinaNombre);
texto.image_xscale = 5;
texto.image_yscale = 5;

instance_destroy(objButton2);
var boton = instance_create_depth(706, 409, depth + 1, objButton1);
boton.image_xscale = 3;
boton.image_yscale = 3;