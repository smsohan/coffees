json.array!(@brewed_coffees) do |brewed_coffee|
  json.extract! brewed_coffee, :id, :name
  json.url brewed_coffee_url(brewed_coffee, format: :json)
end
