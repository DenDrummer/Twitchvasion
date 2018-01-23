///scr_maze()
var map, width, height;
width = room_width / 32;
height = room_height / 32;
var airChance = 94;

//generate maze
for(var h = 0; h < height + 1; h++;)
{
    var row = undefined;
    for(var w = 0; w < width + 1; w++)
    {
        if((h == 0) || (w == 0) || (h == height) || (w == width))
        {
            row[w] = 0;
        }
        else
        {
            row[w] = random(airChance + 1);
        }
    }
    map[h] = row;
}

//spawn maze
for(var h = 0; h < height; h++)
{
    var row1 = map[h];
    var row2 = map[h+1];
    for(var w = 0; w < width; w++)
    {
        //choose which wall to spawn if any
        var wallType = 0;
        if(row1[w] < 1)
        {
            wallType += 1;
        }
        if(row1[w+1] < 1)
        {
            wallType += 2;
        }
        if(row2[w] < 1)
        {
            wallType += 4;
        }
        if(row2[w+1] < 1)
        {
            wallType += 8;
        }
        
        //assign wall object to spawn
        var wall;
        switch(wallType)
        {
            case 1:
                wall = obj_wall_01;
                break;
            case 2:
                wall = obj_wall_02;
                break;
            case 3:
                wall = obj_wall_03;
                break;
            case 4:
                wall = obj_wall_04;
                break;
            case 5:
                wall = obj_wall_05;
                break;
            case 6:
                wall = obj_wall_06;
                break;
            case 7:
                wall = obj_wall_07;
                break;
            case 8:
                wall = obj_wall_08;
                break;
            case 9:
                wall = obj_wall_09;
                break;
            case 10:
                wall = obj_wall_10;
                break;
            case 11:
                wall = obj_wall_11;
                break;
            case 12:
                wall = obj_wall_12;
                break;
            case 13:
                wall = obj_wall_13;
                break;
            case 14:
                wall = obj_wall_14;
                break;
            case 15:
                wall = obj_wall_15;
                break;
        }
        
        //spawn wall
        if(wallType != 0)
        {
            var inst = instance_create(w * 32 + 16, h * 32 + 16, wall);
            inst.image_xscale = 2;
            inst.image_yscale = 2;
        }
    }
}
