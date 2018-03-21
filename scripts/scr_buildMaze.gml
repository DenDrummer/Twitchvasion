///scr_buildMaze()
var w = room_width / CELL_SIZE, h = room_height / CELL_SIZE;
for (var i = 0; i <= h+1; i++)
{
    var spawnY=i*CELL_SIZE-CELL_SIZE/2
    for (var j = 0; j <= w+1; j++)
    {
        //choose wall type
        var wt = scr_getWallType(j,i,w,h);
        
        //assign wall object to spawn
        var wall = scr_getWallSpr(wt);
        
        //spawn tile
        var spawnX=j*CELL_SIZE-CELL_SIZE/2;
        if(wt != 0)
        {
            with(instance_create(spawnX, spawnY, obj_wall))
            {
                sprite_index = wall;
                image_xscale = CELL_SIZE/sprite_width;
                image_yscale = CELL_SIZE/sprite_height;
            }
        }
        else
        {
            //randomly spawn a spawnpoint
            var chance = random(AIR_CHANCE + SPAWN_CHANCE);
            if(chance < SPAWN_CHANCE)
            {
                instance_create(spawnX, spawnY, obj_emoteSpawn);
                show_debug_message("spawner spawned at x:"
                                   + string(spawnX)
                                   + "y:"
                                   + string(spawnY));
            }
        }
    }
}

//randomly replace an enemy spawnpoint by the player spawnpoint
if(instance_exists(obj_emoteSpawn))
{
    var spawner = instance_find(obj_emoteSpawn, floor(random(instance_number(obj_emoteSpawn))));
    instance_create(spawner.x, spawner.y, obj_playerSpawn);
    instance_destroy(spawner);
}
