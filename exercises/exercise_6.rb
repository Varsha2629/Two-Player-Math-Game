require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "bhoomi", last_name: "Panchal", hourly_rate: 60)

@store2.employees.create(first_name: "Prity", last_name: "Patel", hourly_rate: 120)

@store2.employees.create(first_name: "Nirali", last_name: "Soni", hourly_rate: 50)

@store1.employees.create(first_name: "sonu", last_name: "patel", hourly_rate: 60)