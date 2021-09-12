#version 150

float Time = 3.14 + (Pos.x * 3.14);

float frame = floor(Time);
float slide = Time - frame;

vec2 coords = texCoord0 * vec2(1, 1.0 / 6.0) + vec2(0, 1.0 / 6.0) * frame;

vec4 color1 = texture(Sampler0, coords) * vertexColor;

vec4 color2 = texture(Sampler0, coords + vec2(0, 1.0 / 6.0)) * vertexColor;

color = mix(color1, color2, clamp((slide) * 5, 0, 1));
