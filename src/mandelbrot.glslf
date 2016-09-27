#version 150 core

out vec4 color;

void main() {
    vec2 c = gl_FragCoord.xy / 767.0 * 4.0 - 2.0;

    vec2 z = c;
    int max_iterations = 100;
    float i;
    for(i = 0; i < max_iterations; i++) {
        z = vec2(pow(z.x, 2) - pow(z.y, 2), 2 * z.x * z.y) + c;
        if(length(z) > 2.0) {
            break;
        }
    }

    if(i == max_iterations) {
        color = vec4(0.0, 0.0, 0.0, 1.0);
    } else {
        float val = i / float(max_iterations);
        color = vec4(val, val, val, 1.0);
    }
}
