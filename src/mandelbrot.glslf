#version 150 core

out vec4 color;

void main() {
    color = vec4(1.0, (mod(gl_FragCoord.y, 256) / 255), 1.0, 1.0);
}
