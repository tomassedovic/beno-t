#version 150 core

out vec4 color;

void main() {
    vec2 c = gl_FragCoord.xy / 767.0 * 4.0 - 2.0;

    vec2 z = c;
    for(float i = 0; i < 100; i++) {
        z = vec2(pow(z.x, 2) - pow(z.y, 2), 2 * z.x * z.y) + c;
    }

    if(length(z) <= 2.0) {
        color = vec4(0.0, 0.0, 0.0, 1.0);
    } else {
        color = vec4(1.0, 1.0, 1.0, 1.0);
    }
}
