class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },  
    { id: 2, name: 'Men' },
    { id: 3, name: 'Women' },
    { id: 4, name: 'Baby / Kids' },
    { id: 5, name: 'Interior / Home / Accessories' },
    { id: 6, name: 'Books / Music / Games' },
    { id: 7, name: 'Toys / Hobbies' },
    { id: 8, name: 'Home appliances / Smartphone / Camera' },
    { id: 9, name: 'Sports / Leisure' },
    { id: 10, name: 'Food / Drink' },
    { id: 11, name: 'Handmade' },
    { id: 12, name: 'Others' },
  ]
 
   include ActiveHash::Associations
   has_many :eng_items
 
end