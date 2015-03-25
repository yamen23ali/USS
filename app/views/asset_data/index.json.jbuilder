json.array!(@asset_data) do |asset_data|
  json.extract! asset_data, :id, :descriptor_id, :descriptor_value, :photo
  json.url asset_data_url(asset_data, format: :json)
end
