json.extract! shopmium, :id, :chain, :name, :latitude, :longitude, :address, :city, :zip, :department, :phone, :hours, :store_id, :is_address_computed, :is_location_computed, :key, :ignored, :ignore_reason, :overload_chain_name, :mandatory_coords, :country_code, :created_at, :updated_at
json.url shopmium_url(shopmium, format: :json)
