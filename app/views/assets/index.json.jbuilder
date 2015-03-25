json.array!(@assets) do |asset|
  json.extract! asset, :id, :category_id, :sub_category_id
  json.url asset_url(asset, format: :json)
end
