10.times do |index|
  ProductImage.create!(
    id: "#{index+1}",
    image: "https://images.pexels.com/photos/12211/pexels-photo-12211.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    product_id: "#{index+1}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end