10.times do |index|
  Product.create!( 
    id: "#{index+1}",
    name: "substitute#{index+1}",
    description: "description#{index+1}",
    size_id: 1,
    condition_id: 1,
    price: "#{index+1}00",
    product_category_id: 2,
    delivery_responsibility: 1,
    delivery_method: 1,
    delivery_area: 1,
    delivery_day: 1,
    created_at: "2019-01-01", 
    updated_at: "2019-01-01",
    seller_id: 1,
    buyer_id: 1,
  )
end
