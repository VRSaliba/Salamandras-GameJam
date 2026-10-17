/// @desc Function Description
/// @param {any*} who Description
/// @param {any} damageAmount Description
function TakeDamage(who, damageAmount)
{
		if (!instance_exists(who)) return;
		who.life -= damageAmount * (50 / 50 + who.armor)
}