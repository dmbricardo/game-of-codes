class User < ApplicationRecord
  include Level
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_decks
  has_many :decks, through: :user_decks
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
end
