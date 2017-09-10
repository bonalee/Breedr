json.array! @messages.each do |message|
  json.id message.id
  json.name message.pet.name
  json.inverse_name message.inverse_pet.name
  json.body message.body
end