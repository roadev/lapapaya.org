json.array!(@canvas_lado_izquierdos) do |canvas_lado_izquierdo|
  json.extract! canvas_lado_izquierdo, :id, :sector, :problema_general, :solucion, :producto1, :producto2, :producto3, :actividad_clave1, :actividad_clave2, :actividad_clave3, :recurso_clave1, :recurso_clave2, :recurso_clave3
  json.url canvas_lado_izquierdo_url(canvas_lado_izquierdo, format: :json)
end
