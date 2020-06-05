json.extract! carro, :id, :placa, :modelo, :color, :estado, :created_at, :updated_at
json.url carro_url(carro, format: :json)
