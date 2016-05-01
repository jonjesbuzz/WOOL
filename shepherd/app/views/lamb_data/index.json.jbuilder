json.array!(@lamb_data) do |lamb_datum|
  json.extract! lamb_datum, :id, :identifier, :activity, :light
  json.url lamb_datum_url(lamb_datum, format: :json)
end
