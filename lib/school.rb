# code here!
class School
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @hash = {}
  end

  def roster
    @hash
  end
  
  def add_student(student, age)
    if @hash[age] != nil
      @hash[age] << student
    else
      @hash[age] = []
      @hash[age] << student
    end
    
  end
  
  def grade(grade)
    @hash[grade]
  end
  
  def sort
    
    @hash = @hash.sort_by{|age, name| age}.to_h
    @hash.collect do |age, names|
      names.sort! do |a, b|
        a <=> b
      end
    end
    @hash
  end
end
