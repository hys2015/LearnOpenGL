#version 330 core

in vec4 myColor;
in vec2 TextCoord;

uniform sampler2D ourTexture;
uniform sampler2D ourTexture2;
out vec4 color;

void main(){
	color = mix(texture(ourTexture, TextCoord), texture(ourTexture2, vec2(TextCoord.x, 1.0f - TextCoord.y)), 0.2);
}