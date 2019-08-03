100.times do |index|
  Product.create!( 
    id: "#{index}",
    name: "substitute#{index}",
    description: "description#{index}",
    condition_id: "#{index}",
    price: "#{index}00",
    profit: "#{index}00",
    product_category_id: "1",
    delivery_responsibility: "responsibility#{index}",
    delivery_method: "method#{index}",
    delivery_area: "area#{index}",
    delivery_day: "#{index}",
    created_at: "2019-01-01", 
    updated_at: "2019-01-01",
  )
end
