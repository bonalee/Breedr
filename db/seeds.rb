# rails generate model User first_name:string last_name:string phone_number:string email:string password_digest

# rails generate model Pet name:string breed_id:integer user_id:integer birthdate:string gender:string

# rails generate model Breed name:string

# rails generate model Matches pet_id:integer matched_pet_id:integer matched_status:string breed_id:integer litter_date:string

User.create(
  first_name:"Bob",
  last_name: "Smith",
  phone_number: "312-123-1323",
  email: "bob@email.com",
  )
User.create(
  first_name:"Rob",
  last_name: "Peters",
  phone_number: "312-145-2314",
  email: "rob@email.com",
  )
User.create(
  first_name:"Tom",
  last_name: "Parker",
  phone_number: "312-346-2358",
  email: "tom@email.com",
  )


Pet.create(
  name: "Spot",
  breed_id: 1,
  user_id: 1,
  birthdate: "03/23/16",
  gender: "F"
  )
Pet.create(
  name: "Scooby",
  breed_id: 2,
  user_id: 2,
  birthdate: "01/18/17",
  gender: "M"
  )
Pet.create(
  name: "Coco",
  breed_id: 3,
  user_id: 1,
  birthdate: "11/16/15",
  gender: "F"
  )
Pet.create(
  name: "Charlie",
  breed_id: 4,
  user_id: 3,
  birthdate: "09/05/16",
  gender: "M"
  )


Breed.create(
  breed_name: "Pomeranian",
  )
Breed.create(
  breed_name: "Husky",
  )
Breed.create(
  breed_name: "Yorkshire Terrier",
  )
Breed.create(
  breed_name: "Poodle",
  )
Breed.create(
  breed_name: "Pomsky",
  )
Breed.create(
  breed_name: "Yorkipoo",
  )
Breed.create(
  breed_name: "Other",
  )


Match.create(
  pet_id: 21,
  inverse_pet_id: 22,
  matched_status: pending,
  breed_id: 5, 
  )
Match.create(
  pet_id: 24,
  inverse_pet_id: 23,
  matched_status: confirmed,
  breed_id: 6, 
  )