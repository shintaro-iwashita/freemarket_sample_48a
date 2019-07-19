crumb :root do
  link "メルカリ", root_path
end

crumb :brands do
  link "ブランド一覧", brands_path
  parent :root
end

crumb :categories do
  link "カテゴリー一覧", categories_path
  parent :root
end

crumb :mypage do
  link "マイページ", users_path
  parent :root
end

crumb :product do
  link "商品名", product_path
  parent :root
end

crumb :profile do
  link "プロフィール編集", edit_user_path
  parent :mypage
end

crumb :confirm do
  link "本人情報の登録", edit_user_confirm_path
  parent :mypage
end

crumb :logout do
  link "ログアウト"
  parent :mypage
end

