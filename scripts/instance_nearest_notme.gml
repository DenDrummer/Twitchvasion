///instance_nearest_notme(x, y, obj)
//credits: the user Nocturne on the yoyogames forums
var xx   = argument0,
    yy   = argument1,
    obj  = argument2;

//teleport instance far away for the check
x -= room_width * 2;

//do the check
var n = instance_nearest(xx, yy, obj);

//teleport back
x += room_width * 2;


return n;
