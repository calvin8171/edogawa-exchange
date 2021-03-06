class EngItem < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  belongs_to :condition
  belongs_to :area
  has_one_attached :image
  has_many :comments

  validates :image, presence: true
  validates :item_name, presence: true
  validates :description, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank" }  
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank" }  
  validates :area_id, numericality: { other_than: 1 , message: "can't be blank" } 
  validates :price, presence: true
end
