users= [
  { id: 1,
    email: "aaa@aaa",
    password: "aaaaaa",
    nickname: "aaa",
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