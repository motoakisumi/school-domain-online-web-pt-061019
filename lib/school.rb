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
    # key doesn't need to sorted
    # @roster = @roster.sort_by{|age, name| age}.to_h
    sorted_hash = {}

    @roster.each do |age, names|
      
      #names.sort! do |a, b|
      #   a <=> b
      # end
      
      # different way to do this but you don't want to change the original value
      #names.sort!
    
      sorted_hash[age] = names.sort
    end
    sorted_hash
    
  end
end
