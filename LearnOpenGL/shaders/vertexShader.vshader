#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 mColor;
layout (location = 2) in vec2 textCoord;

out vec4 myColor;
out vec2 TextCoord;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;


void main(){
	gl_Position = projection * view * model * vec4(position.xyz, 1.0f);
	myColor = vec4(mColor, 1.0f);
	TextCoord = textCoord;
}