4.times do |index|
  ProductImage.create!(
    id: "#{index}",
    image: "sample#{index}.jpeg",
    product_id: "#{index}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end