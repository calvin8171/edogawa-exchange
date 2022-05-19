class Condition < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'New' },
    { id: 3, name: 'Used - Like New' },
    { id: 4, name: 'Used - Very Good' },
    { id: 5, name: 'Used - Good' },
    { id: 6, name: 'Used - Little Damaged' },
    { id: 7, name: 'Used - Damaged' },
  ]
 
  include ActiveHash::Associations
  has_many :eng_items

end
