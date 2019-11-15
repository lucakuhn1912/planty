# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.destroy_all
User.destroy_all

luca = User.create(
  email: 'luca@gmail.com',
  password: '123456',
  firstname: 'Luca',
  lastname: 'Kuhn',
  location: 'London',
  bio: 'My favourite plant is a cactus'
)
file = URI.open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
luca.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
luca.save

barnie = User.create(
  email: 'barnie@gmail.com',
  password: '123456',
  firstname: 'Barnie',
  lastname: 'Davies',
  location: 'London',
  bio: 'Plants just make me happy'
)
file = URI.open('https://images.unsplash.com/photo-1544098485-2a2ed6da40ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
barnie.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
barnie.save

sophia = Plant.new(
  name: 'Sophia',
  description: 'Great indoor plant, which doesnt need much water or light',
  location: 'London',
  price_per_day: 12,
  availability:true,
  owner: User.first,
)
# url1 = 'https://images.unsplash.com/photo-1485955900006-10f4d324d411?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2852&q=80'
# sophia.photo = url1
file = URI.open('https://images.unsplash.com/photo-1485955900006-10f4d324d411?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2852&q=80')
sophia.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
sophia.save

peter = Plant.new(
  name: 'Peter',
  description: 'Needs lots of attention, sunlight but not too much, and likes to take a shower with you once a week',
  location: 'London',
  price_per_day: 15,
  availability: true,
  owner: User.last,
)
# url1 = 'https://images.unsplash.com/photo-1512428813834-c702c7702b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
# peter.photo = url1
file = URI.open('https://images.unsplash.com/photo-1485955900006-10f4d324d411?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2852&q=80')
peter.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
peter.save

florence = Plant.new(
  name: 'Florence',
  description: 'She is a real sun lover, leave her in direct sunlight and water twice a week',
  location: 'London',
  price_per_day: 8,
  availability: true,
  owner: User.last,
)
# url1 = 'https://images.unsplash.com/photo-1512428813834-c702c7702b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
# florence.photo = url1
file = URI.open('https://images.unsplash.com/photo-1512428813834-c702c7702b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
florence.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
florence.save

angus = Plant.new(
  name: 'Angus',
  description: 'Angus likes the dry air, he is more suitable inside near a fireplace, does not need much water',
  location: 'London',
  price_per_day: 8,
  availability: true,
  owner: User.first,
)
# url1 = 'https://images.unsplash.com/photo-1512428813834-c702c7702b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
# angus.photo = url1
file = URI.open('https://images.unsplash.com/photo-1512428813834-c702c7702b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
angus.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
angus.save
