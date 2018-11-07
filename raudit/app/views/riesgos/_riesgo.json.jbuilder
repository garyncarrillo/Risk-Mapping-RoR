json.extract! riesgo, :id, :idprodimientos, :descripcion, :causa, :efecto, :r_categoria, :nivel_riesgo_inherente, :f_natural, :f_humano, :f_proceso, :f_tecnologico, :f_otros, :created_at, :updated_at
json.url riesgo_url(riesgo, format: :json)
