#ifndef SHADERS_H
#define SHADERS_H

#include<string>
#include<fstream>
#include<sstream>
#include<iostream>

#include<GL/glew.h>

class Shader{
public:
    GLuint ProgramID;
    Shader(const GLchar* vertexShaderPath, const GLchar* fragmentShaderPath);
    void Use();
};

#endif