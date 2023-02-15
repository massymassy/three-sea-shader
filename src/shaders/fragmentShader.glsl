uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMutiplier;

varying float vElevation;


void main() {
    float mixStrengthColor = (vElevation + uColorOffset) * uColorMutiplier;
    vec3 color = mix(uDepthColor, uSurfaceColor, mixStrengthColor);
    gl_FragColor = vec4(color, 1.0); 
}