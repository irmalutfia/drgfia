json.extract! payment, :id, :remain, :date, :total, :invoice, :created_at, :updated_at
json.url payment_url(payment, format: :json)
