shader_type canvas_item;

void fragment() {
    vec4 albedo_tex = texture(TEXTURE, UV);
    COLOR.rgb = albedo_tex.rgb;
    COLOR.a = albedo_tex.a;
    
    // Crear la sombra
    vec2 light_pos = vec2(0.5, 0.9);
    float distance_to_light = distance(UV, light_pos);
    float shadow_intensity = smoothstep(0.5, 0.6, distance_to_light);
    
    // Aplicar la sombra al objeto
    COLOR.rgb *= (10.0 - shadow_intensity);
}
shader_type canvas_item;

void fragment() {
    vec4 albedo_tex = texture(TEXTURE, UV);
    COLOR.rgb = albedo_tex.rgb;
    COLOR.a = albedo_tex.a;
    
    // Crear la sombra
    vec2 light_pos = vec2(0.5, 0.9);
    float distance_to_light = distance(UV, light_pos);
    float shadow_intensity = smoothstep(0.5, 0.6, distance_to_light);
    
    // Aplicar la sombra al objeto
    COLOR.rgb *= (10.0 - shadow_intensity);
}
