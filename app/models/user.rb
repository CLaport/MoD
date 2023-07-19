class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :choices, dependent: :destroy
  has_many :matches, through: :choices
  has_many :interests, through: :choices
  has_many :suggested_events, through: :choices
  has_one_attached :photo

end
