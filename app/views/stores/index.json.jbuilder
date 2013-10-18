json.array!(@stores) do |store|
  json.extract! store, :name, :url, :address, :lnglat, :user_id, :storefront, :facebook, :average_rating, :ratings_count
  json.url store_url(store, format: :json)
end
