class Student
  attr_accessor :first_name, :last_name, :email, :phone

  def initialize(first_name, last_name, email, phone)
    @first_name = first_name,
                  @last_name = last_name,
                  @email = email,
                  @phone = phone
  end

  def to_s
    "Fisrst Name : #{@first_name} Last Name #{@last_name} "
  end
end

std = Student.new('Pascal', 'Bizimungu', 'bizip04@gmail.com', '0785855328')
puts std
