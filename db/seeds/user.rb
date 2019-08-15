users= [
  { id: 1,
    email: "aaa@aaa", 
    password: "aaaaaa",
    nickname: "aaa",
    avatar:"http://img.g-x.jp/articles/4d9ae101-1040-4aa5-ad50-0ce3caac1ca2/img/o/%83A%83o%83%5E%81%5B02.jpg",
    family_name: "aaa",
    first_name: "aaa",
    family_name_kana: "aaa",
    first_name_kana: "aaa",
    created_at: "2019-01-01", 
    updated_at: "2019-01-01" }
  ]
  users.each do |record|
    User.create!(record) unless User.find_by(email: record[:email])
  end
