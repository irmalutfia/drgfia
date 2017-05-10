json.extract! drug, :id, :name, :qty, :unit, :price_per_unit, :created_at, :updated_at
json.url drug_url(drug, format: :json)
