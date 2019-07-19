crumb :root do
  link "メルカリ", root_path
end

  # crumb :brands do
  #   link "ブランド一覧", brands_path
  #   parent :root
  # end

  # crumb :categories do
  #   link "カテゴリー一覧", categories_path
  #   parent :root
  # end

crumb :mypage do
  link "マイページ", users_path(current_user)
  parent :root
end

# crumb :item do |item|
#   link item.name, item_path(item)
#   parent :root
# end

crumb :profile do
  link "プロフィール", edit_user_path
  parent :mypage
end

crumb :userAddress do
  link "本人情報の登録", edit_user_confirm_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", logouts_path
  parent :mypage
end

# crumb :category do |category|
#   link category.name, category
#   parent :categories
# end