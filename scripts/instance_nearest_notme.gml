///instance_nearest_notme(x, y, obj)
//credits: the user xot on gmlscripts.com
var xx   = argument0,
    yy   = argument1,
    obj  = argument2;
instance_deactivate_object(self);
var n = instance_nearest(xx, yy, obj);
instance_activate_object(self);
return n;
