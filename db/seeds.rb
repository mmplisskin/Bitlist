# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  categories = Category.create([{ name: 'Art' }, { name: 'Cars' }, { name: 'Books' },
    { name: 'Collectibles' }, { name: 'Computers' }, { name: 'Electronics' },
    { name: 'Furniture' }, { name: 'Heavy Machinery' },
    { name: 'Heavy Machinery' },
    { name: 'Jewlrey' }, { name: 'Materials' }, { name: 'Mining Hardware' },
    { name: 'Sporting Goods' }, { name: 'Toys' }, { name: 'vehicles' },
    { name: 'wallets' }, 
    ])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # item_1=Item.new(name:"Zeus Mining Rig",
  # location:"Hollywood",
  # price:3,
  # price_decimal:34,description:"this is a cool unit",
  # category:"Minning Rigs",category_set:"item",area_code:925,phone_number:5505538,user_id:4302)
