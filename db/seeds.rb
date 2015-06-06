# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  categories = Category.create([{ name: 'Art' }, { name: 'Cars' }, { name: 'Books' },
    { name: 'Collectibles' }, { name: 'Computers' }, { name: 'Electronics' },
    { name: 'Furniture' }, { name: 'Heavy Machinery' },
    { name: 'Jewelry' }, { name: 'Materials' }, { name: 'Mining Hardware' },
    { name: 'Sporting Goods' }, { name: 'Toys' }, { name: 'Vehicles' },
    { name: 'Wallets' },
    ])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  #
  # items =Item.create(name:"Zeus Mining Rig",
  # price:3.24, description:"this is a cool unit it will help you make lots of btc",
  # category:"Minning Rigs",zipcode:90028,phone_number:5505538765,user_id:3)
