json.array! @messages.each do |message|
  json.id message.id
  json.matchId message.match_id
  json.petId message.pet_id
  json.inversePetId message.inverse_pet_id
  json.petName message.pet.name
  json.body message.body
end