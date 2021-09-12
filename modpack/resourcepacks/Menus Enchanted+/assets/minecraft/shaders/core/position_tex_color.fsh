#version 150

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;

in vec2 texCoord0;
in vec4 vertexColor;
in vec4 Pos;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;
    if(Pos.z == -1999)
    {
        #moj_import <menus-enchanted.glsl>
    }
    else
    {
        #moj_import <background_transitions.glsl>
    }
    
    if (color.a < 0.1) {
        discard;
    }
    fragColor = color * ColorModulator;
}
