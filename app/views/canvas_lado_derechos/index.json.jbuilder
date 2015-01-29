json.array!(@canvas_lado_derechos) do |canvas_lado_derecho|
  json.extract! canvas_lado_derecho, :id, :propuesta_de_valor, :tratamiento_con_el_cliente, :canales, :segmento_cliente1, :segmento_cliente22, :segmento_cliente3, :stakeholder1, :stakeholder2, :stakeholder3, :indicador_clave
  json.url canvas_lado_derecho_url(canvas_lado_derecho, format: :json)
end
