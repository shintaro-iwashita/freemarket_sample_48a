FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    family_name {"山本"}
    family_name_kana {"ヤマモト"}
    first_name {"祐大"}
    first_name_kana {"ユウタ"}
  end

end
