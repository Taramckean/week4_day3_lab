require_relative('../models/hogwarts')
require_relative('../models/houses')
require('pry')

Student.delete_all()
House.delete_all()

house1= House.new({
  "name" => "Gryffindor",
  "logo" => "/gryffindor.jpeg"
})
house2= House.new({
  "name" => "Slytherin",
  "logo" => "/slytherin.jpeg"
})
house3= House.new({
  "name" => "Hufflepuff",
  "logo" => "/hufflepuff.jpeg"
})
house4= House.new({
  "name" => "Ravenclaw",
  "logo" => "/ravenclaw.jpeg"
})
house1.save()
house2.save()
house3.save()
house4.save()



student1= Student.new({
  "first_name" => "Campbell",
  "last_name" => "Miller",
  "house_id" => house1.id,
  "age" => 45
})

student2= Student.new({
  "first_name" => "Steven",
  "last_name" => "Bonner",
  "house_id" => house2.id,
  "age" => 28
})

student3= Student.new({
  "first_name" => "Greg",
  "last_name" => "R",
  "house_id" => house3.id,
  "age" => 31
})

student4= Student.new({
  "first_name" => "Tara",
  "last_name" => "Mckeaney",
  "house_id" =>house4.id,
  "age" => 25
})

student1.save()
student2.save()
student3.save()
student4.save()

houses = House.all()

students = Student.all()

binding.pry
nil
