class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable,
         omniauth_providers: [:facebook, :google_oauth2]
  validates :nickname,:family_name,:family_name_kana,:first_name,:first_name_kana
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.avatar = auth.info.image
      user.nickname = auth.info.name
      user.gender = "a"
      user.first_name = "a"
      user.first_name_kana = "a"
      user.family_name = "a"
      user.family_name_kana = "a"
    end
  end

end
