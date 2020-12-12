class User < ApplicationRecord
  extend FriendlyId
  friendly_id :email, use: :slugged

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects, dependent: :destroy # if the user is destroyed, project is too
end
