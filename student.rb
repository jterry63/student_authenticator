require_relative 'crypt'

class Student
  include Crypt
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s 
    "First Name:  #{@first_name}, Last Name: #{@last_name}, Username: #{@username}, email address: #{@email} "
  end
end

jordan = Student.new("Jordan", "Terry", "jordankterry", "jordankterry@outlook.com", "test1")

puts jordan.create_hash_digest(jordan.password)