json.array!(@descriptors) do |descriptor|
  json.extract! descriptor, :id, :name, :active
  json.url descriptor_url(descriptor, format: :json)
end
