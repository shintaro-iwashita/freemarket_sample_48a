class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :buyer_products, class_name: 'Production', :foreign_key => 'buyer_id'
  has_many :seller_products, class_name: 'Production', :foreign_key => 'seller_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable

  validates :nickname, :family_name,:family_name_kana,:first_name,:first_name_kana,presence: true;

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        password: Devise.friendly_token[0, 20],
      )
    end

    user
  end

end
