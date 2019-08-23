crumb :root do
  link "メルカリ", root_path
end

# カテゴリ個別ページ実装後にビューに記述
crumb :category do |category|
  link category.name, category
  parent :categories
end

crumb :categories do
  link "カテゴリー一覧", categories_path
  parent :root
end

crumb :brands do
  link "ブランド一覧", brands_path
  parent :root
end

crumb :mypage do
  link "マイページ", users_path
  parent :root
end

# 商品個別ページ実装後にビューに記述
crumb :product do |product|
  link product.name, product_path(product)
  parent :root
end

# 商品名仮置き
crumb :product do
  link "商品名", product_path
  parent :root
end

crumb :profile do
  link "プロフィール編集", edit_user_path
  parent :mypage
end

crumb :confirm do
  link "本人情報の登録", edit_confirm_path
  parent :mypage
end

crumb :logout do
  link "ログアウト"
  parent :mypage
end

