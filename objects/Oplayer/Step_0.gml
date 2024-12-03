/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(vk_up)
{
	y-=1
}
if keyboard_check(vk_down)
{
	y+=1
}
if keyboard_check(vk_left)
{
	x-=1 image_xscale=-1
}
if keyboard_check(vk_right)
{
	x+=1 image_xscale=1
}
if keyboard_check(vk_space) {
    sprite_index = sPlayerJump;
}
else if keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right) {
    sprite_index = sPlayerRun;
}
else {
    sprite_index = sPlayer;
}
