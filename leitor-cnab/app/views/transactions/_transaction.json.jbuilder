json.extract! transaction, :id, :transaction_type_id, :date, :value, :card, :hour, :store_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
