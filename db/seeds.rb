# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all
Shelter.destroy_all

shelter_1 = Shelter.create(name: 'Vivamus At', city: 'South Andrew', state: 'LA', rank: 1, foster_program: true)
shelter_2 = Shelter.create(name: 'Sed Vulputate', city: 'Lake Skyefurt', state: 'TN', rank: 2, foster_program: true)
shelter_3 = Shelter.create(name: 'Nulla Facilisi', city: 'Hilmaton', state: 'PA', rank: 3, foster_program: false)

Pet.create(shelter: shelter_1, name: 'Daisy', age: 1, breed: 'Irish Spaniel', adoptable: true)
Pet.create(shelter: shelter_1, name: 'Rocky', age: 8, breed: 'Fox Terrier', adoptable: true)
Pet.create(shelter: shelter_1, name: 'Missy', age: 9, breed: 'Shihtzu', adoptable: false)
Pet.create(shelter: shelter_2, name: 'Charlie', age: 1, breed: 'Whippet', adoptable: true)
Pet.create(shelter: shelter_2, name: 'Baby', age: 5, breed: 'Clumber', adoptable: false)
Pet.create(shelter: shelter_2, name: 'Cocoa', age: 10, breed: 'St. Bernard', adoptable: true)
Pet.create(shelter: shelter_3, name: 'Buddy', age: 6, breed: 'German Pointer', adoptable: true)
Pet.create(shelter: shelter_3, name: 'Sugar', age: 9, breed: 'Australian Terrier', adoptable: true)
Pet.create(shelter: shelter_3, name: 'Mia', age: 9, breed: 'Scottish Deerhound', adoptable: false)
