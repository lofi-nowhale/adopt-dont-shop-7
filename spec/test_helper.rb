def load_test_data 
  @shelter_1 = Shelter.create!(name: 'Duck Pond', city: "Denver", rank: 5, foster_program: true)
  @shelter_2 = Shelter.create!(name: 'Bear Den', city: "Fort Collins", rank: 3, foster_program: false)
  @shelter_3 = Shelter.create!(name: 'Flamingo Flamboyance', city: "San Francisco", rank: 3, foster_program: false)
  @shelter_4 = Shelter.create!(name: 'Koala Colony', city: "Sydney", rank: 4, foster_program: false)
  @shelter_5 = Shelter.create!(name: 'Dog Park', city: "Paris", rank: 3, foster_program: true)
  @shelter_6 = Shelter.create!(name: 'Cat Cafe', city: "Amsterdam", rank: 2, foster_program: true)
  
  @pet_1 = @shelter_1.pets.create!(name: 'Drake', breed: "pit bull", age: 6, adoptable: true)
  @pet_2 = @shelter_1.pets.create!(name: 'Bill', breed: "jack russell terrier", age: 5, adoptable: false )
  
  @pet_3 = @shelter_2.pets.create!(name: 'Beardo', breed: "schnauzer", age: 6, adoptable: true )
  @pet_4 = @shelter_2.pets.create!(name: 'Megan', breed: "golden doodle", age: 1, adoptable: false)
  
  @pet_5 = @shelter_3.pets.create!(name: 'Flora', breed: "samoyed", age: 6, adoptable: false )
  @pet_6 = @shelter_3.pets.create!(name: 'Phoebe', breed: "chihuahua", age: 2, adoptable: false)
  
  @pet_7 = @shelter_4.pets.create!(name: 'Yuka', breed: "great dane", age: 4, adoptable: true)
  @pet_8 = @shelter_4.pets.create!(name: 'Gonzo', breed: "lab", age: 1, adoptable: false)
  
  @pet_9 = @shelter_5.pets.create!(name: 'Cherry', breed: "german shepard", age: 4, adoptable: true)
  @pet_10 = @shelter_5.pets.create!(name: 'Portia', breed: "chow chow", age: 1, adoptable: true)
  
  @pet_11 = @shelter_6.pets.create!(name: 'Stinky', breed: "australian shepard", age: 1, adoptable: false)
  @pet_12 = @shelter_6.pets.create!(name: 'Bob', breed: "blue heeler", age: 1, adoptable: false)

  @applicant_1 = Applicant.create!(name: "P Sherman", street_address: "42 Wallaby Way", city: "Sydney", state: "NSW", zipcode: "2307", description: "best pet parent duh", status: "In Progress")

  @applicant_2 = Applicant.create!(name: "Clifford Red", street_address: "123 Greenwich", city: "New York City", state: "NY", zipcode: "10001", description: "10/10 pet parent duh", status: "Pending")
  
  PetApplicant.create!(applicant: @applicant_1, pet: @pet_1)
  PetApplicant.create!(applicant: @applicant_1, pet: @pet_2)
  
  PetApplicant.create!(applicant: @applicant_2, pet: @pet_1)
  PetApplicant.create!(applicant: @applicant_2, pet: @pet_2)
  PetApplicant.create!(applicant: @applicant_2, pet: @pet_3)
end
