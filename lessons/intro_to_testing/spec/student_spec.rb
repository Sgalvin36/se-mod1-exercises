# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new("Shane")
      expect(student).to be_a Student
    end

     # test it has a name
    it 'has a name' do
      student = Student.new("Shane")
      expect(student.name).to eq 'Shane'
    end

    # test it has cookies 
    it 'has cookies' do
      student = Student.new("Shane")
      expect(student.cookies).to eq []
    end
  end
    
  describe '#add_cookies' do
    # test it can add cookies
    it 'can add cookie to cookies array' do
      student = Student.new("Shane")
      student.add_cookie("Chocolate Chip")
      student.add_cookie("Peanut Butter")
      expect(student.cookies).to eq ['Chocolate Chip', 'Peanut Butter']
    end
  end
end
