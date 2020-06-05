json.extract! estudiante, :id, :codigo, :nombre, :edad, :estado, :descripcion, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
