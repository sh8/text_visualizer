json.array!(@text_maps) do |text_map|
  json.extract! text_map, :id
  json.url text_map_url(text_map, format: :json)
end
