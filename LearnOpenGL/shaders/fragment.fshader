#version 330 core

in vec4 myColor;
in vec2 TextCoord;
vec2 TextCoord2;

uniform sampler2D ourTexture;
uniform sampler2D ourTexture2;
uniform float mixrate;

out vec4 color;

void main(){
	TextCoord2 = vec2(1.0f - TextCoord.x, 1.0f - TextCoord.y);
	color = mix(texture(ourTexture, TextCoord), texture(ourTexture2, TextCoord2), mixrate);
}