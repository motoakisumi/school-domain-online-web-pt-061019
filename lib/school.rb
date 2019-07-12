# code here!
class School
  
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, age)
    if @roster[age] != nil
      @roster[age] << student
    else
      @roster[age] = []
      @roster[age] << student
    end
    
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    
    @roster = @roster.sort_by{|age, name| age}.to_h
    @roster.collect do |age, names|
      names.sort! do |a, b|
        a <=> b
      end
    end
    @roster
  end
end
