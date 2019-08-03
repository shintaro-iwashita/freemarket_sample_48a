4.times do |index|
  ProductImage.create!(
    id: "#{index}",
    image: "https://images.pexels.com/photos/12211/pexels-photo-12211.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    product_id: "#{index}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end