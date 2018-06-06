require_relative('../models/hogwarts')
require('pry')

Student.delete_all()


student1= Student.new({
  "first_name" => "Campbell",
  "last_name" => "Miller",
  "house" => "Ravenclaw",
  "age" => 45
})

student2= Student.new({
  "first_name" => "Steven",
  "last_name" => "Bonner",
  "house" => "Gryffindor",
  "age" => 28
})

student3= Student.new({
  "first_name" => "Greg",
  "last_name" => "R",
  "house" => "Slytherin",
  "age" => 31
})

student4= Student.new({
  "first_name" => "Tara",
  "last_name" => "Mckeaney",
  "house" =>"Hufflepuff",
  "age" => 25
})

student1.save()
student2.save()
student3.save()
student4.save()

students = Student.all()

binding.pry
nil
