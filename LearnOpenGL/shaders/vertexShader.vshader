#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 mColor;
out vec4 myColor;

void main(){
	gl_Position = vec4(position.x, -position.y, position.z, 1.0f);
	myColor = vec4(mColor, 1.0f);
}