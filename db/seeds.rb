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


users=User.create([{name: "Maxwell",
    email: "mmplisskin@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    admin: true},


    {name: "John_mcdonalds_farm",
    email: "john@gmail.com",
    password: "123456",
    password_confirmation: "123456"},


    {name: "rick_astley",
    email: "rick@gmail.com",
    password: "123456",
    password_confirmation: "123456"},


    {name: "uberSTeve",
    email: "someonesteve@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "J Biebs Luvr",
    email: "someonejbiebs@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "Surfer_Daily",
    email: "surfer@gmail.com",
    password: "123456",
    password_confirmation: "123456"},


    {name: "Mr.fuzz Rahul",
    email: "Rahul@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "Carlitos",
    email: "someonecarlitos@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "Yo",
    email: "someoneYo@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "Kiesha4Lyf",
    email: "someonekiesha@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "Jefferson",
    email: "someoneJefferson@gmail.com",
    password: "123456",
    password_confirmation: "123456"},



    {name: "Sophie",
    email: "someoneSophie@gmail.com",
    password: "123456",
    password_confirmation: "123456"},


    {name: "megan",
    email: "someoneMegan@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "Chris Brown",
    email: "someonechris@gmail.com",
    password: "123456",
    password_confirmation: "123456"},

    {name: "Kenaniah",
    email: "someoneKenaniah@gmail.com",
    password: "123456",
    password_confirmation: "123456"}])
