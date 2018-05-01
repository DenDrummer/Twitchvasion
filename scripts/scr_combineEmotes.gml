///scr_combineEmotes(newObj)
var newObj = argument0;

//calculate new variables
var newMaxHealth = self.maxHealth + other.maxHealth;
var newX = ((self.x * self.maxHealth) + (other.x * other.maxHealth)) / newMaxHealth;
var newY = ((self.y * self.maxHealth) + (other.y * other.maxHealth)) / newMaxHealth;
var newMaxSpeed = max(self.maxSpeed, other.maxSpeed);

//destroy old instances
instance_destroy(self);
instance_destroy(other);

//create new instance
with(instance_create(newX, newY, newObj))
{
    maxhealth = newMaxHealth;
    h = newMaxHealth;
    maxSpeed = newMaxSpeed;
}
