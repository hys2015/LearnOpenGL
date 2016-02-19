#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 mColor;
layout (location = 2) in vec2 textCoord;

out vec4 myColor;
out vec2 TextCoord;


void main(){
	gl_Position = vec4(position.xyz, 1.0f);
	myColor = vec4(position, 1.0f);
	TextCoord = textCoord;
}