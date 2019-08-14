4.times do |index|
  ProductImage.create!(
    id: "#{index+1}",
    image: "https://images.pexels.com/photos/1078958/pexels-photo-1078958.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    product_id: "#{index+1}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end

4.times do |index|
  ProductImage.create!(
    id: "#{index+5}",
    image: "https://images.pexels.com/photos/2763623/pexels-photo-2763623.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    product_id: "#{index+5}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end

4.times do |index|
  ProductImage.create!(
    id: "#{index+9}",
    image: "https://images.pexels.com/photos/12211/pexels-photo-12211.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    product_id: "#{index+9}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end

4.times do |index|
  ProductImage.create!(
    id: "#{index+13}",
    image: "https://images.pexels.com/photos/1926620/pexels-photo-1926620.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    product_id: "#{index+13}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end