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

array_testimage =
        ["https://shop.r10s.jp/f-odekake/cabinet/03321897/19ss/1000270-72_1_0218.jpg",
         "https://image.rakuten.co.jp/rtm-select/cabinet/apparel/ladys/polo/302_adp_wm_mainvis.jpg",
         "https://im.belluna.jp/belluna/ph/O/2357/1006842357/DLARGE.JPG",
         "https://tshop.r10s.jp/milky-way/cabinet/05772246/05772247/mc16118.jpg?fitin=275:275",
         "https://cdn.thumb.shop-list.com/res/up/shoplist/shp/__basethum900__/jiggysshop/roshell4/200170-main.jpg",
         "https://shop.r10s.jp/jiggys-shop/cabinet/sp00/201735_m01fl.jpg"]

6.times do |index|
  ProductImage.create!(
    id: "#{index+17}",
    image:array_testimage[index],
    product_id: "#{index+17}",
    created_at: '2019-01-01', 
    updated_at: '2019-01-01',
  )
end
