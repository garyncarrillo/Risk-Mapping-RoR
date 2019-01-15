json.extract! paquetes_plan_to_fecha, :id, :idpaquete, :responsable, :fecha_plan_i, :fecha_plan_f, :fecha_inicio, :fecha_fin, :dias, :comentarios, :estado, :created_at, :updated_at
json.url paquetes_plan_to_fecha_url(paquetes_plan_to_fecha, format: :json)
