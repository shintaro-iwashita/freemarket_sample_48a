class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :buyer_products, class_name: 'Product', :foreign_key => 'buyer_id'
  has_many :seller_products, class_name: 'Product', :foreign_key => 'seller_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable,
         omniauth_providers: [:facebook, :google_oauth2]

  validates :nickname,presence: true;


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.avatar = auth.info.image
      user.nickname = auth.info.name
    end
  end

end
