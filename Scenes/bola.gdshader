shader_type canvas_item;

void fragment() {
    vec4 albedo_tex = texture(TEXTURE, UV);

    // Crear la sombra en el sprite (donde la luz no llega)
    vec2 light_pos = vec2(0.5, 0.3);
    float distance_to_light = distance(UV, light_pos);
    float shadow_intensity = smoothstep(0.4, 0.6, distance_to_light);
    albedo_tex.rgb *= (1.0 - shadow_intensity);

    COLOR = albedo_tex;
}
