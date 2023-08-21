// NOTE: Shader automatically converted from Godot Engine 4.1.stable's CanvasItemMaterial.

shader_type canvas_item;

uniform float vel = .2;

void fragment(){
	COLOR = texture(TEXTURE , UV + vec2(0, -0.1) * TIME * vel);
}
