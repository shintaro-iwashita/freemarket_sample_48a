10.times do |i|
  Product.create!(
    [
    {
    name:"#{i}",
    description: "#{i}",
    size_id: "#{i}",
    condition_id: "#{i}",
    price: "#{i}",
    profit: "#{i}",
    product_category_id: "1/#{i}",
    delivery_responsibility: "#{i}",
    delivery_method: "#{i}",
    delivery_area:"#{i}",
    delivery_day:"#{i}",
    }
    ]
  )
end

10.times do |i|
  Product.create!(
    [
    {
    name:"#{i}",
    description: "#{i}",
    size_id: "#{i}",
    condition_id: "#{i}",
    price: "#{i}",
    profit: "#{i}",
    product_category_id: "219/#{i}",
    delivery_responsibility: "#{i}",
    delivery_method: "#{i}",
    delivery_area:"#{i}",
    delivery_day:"#{i}",
    }
    ]
  )
end