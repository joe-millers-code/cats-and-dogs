# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.create(name: "Larry", age: 10, city: "Minneapolis", breed: "husky", bio: "Born to lose!", temperament: "Fiesty", picture: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjRs8uciNvjAhWnrVkKHQffDPMQjRx6BAgBEAU&url=https%3A%2F%2Fwww.insidedogsworld.com%2F6-things-to-know-before-getting-a-siberian-husky%2F&psig=AOvVaw3QZiwLwhzKUys6ARPf4k4d&ust=1564521832258438")
Dog.create(name: "Bobo", age: 1, city: "Houston", breed: "Shih tzu ", bio: "My face is weird!", temperament: "Bored", picture:  "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiPvPGqiNvjAhVGxVkKHV5WA2MQjRx6BAgBEAU&url=https%3A%2F%2Fwww.facebook.com%2Flacey.barker.77%2F&psig=AOvVaw1hNOIebjYCN2J7tYd8RKO9&ust=1564521882250382")

Cat.create(name: "Lucifer", age: 4, city: "Ft. Lauderdale", breed: "cat breed? ", bio: "I will destroy the universe", temperament: "firey", picture:  "https://i.pinimg.com/originals/c5/2b/98/c52b980912d473607a4bc389a8c44498.jpg")
Cat.create(name: "Demogorgen", age: 1, city: "Brooklyn", breed: "Cat breed1? ", bio: "Lord have merthy", temperament: "confused", picture:  "https://www.petmd.com/sites/default/files/what-does-it-mean-when-cat-wags-tail.jpg")
