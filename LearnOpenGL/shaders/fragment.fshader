#version 330 core

in vec4 myColor;
in vec2 TextCoord;

uniform sampler2D ourTexture;
out vec4 color;

void main(){
	color = texture(ourTexture, TextCoord);
}