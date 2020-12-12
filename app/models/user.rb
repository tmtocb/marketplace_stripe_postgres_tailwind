class User < ApplicationRecord
  extend FriendlyId
  friendly_id :email, use: :slugged

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
