uniform sampler2D colorTexture;
uniform float exposure;

varying vec2 v_textureCoordinates;

void main()
{
    vec3 color = texture2D(colorTexture, v_textureCoordinates).rgb;
    vec3 toneMapped = vec3(1.0) - exp(-color * exposure);
    gl_FragColor = vec4(toneMapped, 1.0);
}