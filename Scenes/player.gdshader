shader_type canvas_item;

uniform vec2 shadow_offset = vec2(5.0, -5.0);
uniform vec4 shadow_color = vec4(0.0, 0.0, 0.0, 0.3);

void fragment() {
    vec4 albedo_tex = texture(TEXTURE, UV);
    vec4 shadow_tex = texture(TEXTURE, UV + shadow_offset / TEXTURE_PIXEL_SIZE);

    // Crear la sombra en el sprite (donde la luz no llega)
    vec2 light_pos = vec2(0.5, 0.5);
    float distance_to_light = distance(UV, light_pos);
    float shadow_intensity = smoothstep(0.4, 0.6, distance_to_light);
    albedo_tex.rgb *= (1.0 - shadow_intensity);

    // Aplicar la sombra desplazada (la que se proyecta en el suelo)
    if (shadow_tex.a > 0.0) {
        COLOR.rgb = mix(shadow_color.rgb, albedo_tex.rgb, albedo_tex.a);
        COLOR.a = max(shadow_tex.a, albedo_tex.a);
    } else {
        COLOR = albedo_tex;
    }
}
