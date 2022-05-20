class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :eng_items
  has_many :comments
  
  validates :nickname, presence: true
  validates :name_kana, presence: true, format: {with: /\A[ァ-ヶー－]+\z/ }
  validates :surname_kana, presence: true, format: {with: /\A[ァ-ヶー－]+\z/ }
  validates :name_english, presence: true
  validates :surname_english, presence: true
end
