class School
  attr_accessor :add_student, :grade

  def roster
    @roster
  end

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student_name, grade)
    if roster[grade]
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(number)
    roster[number]
  end

  def sort
    @roster.each {|key, value| value.sort!}
  end

end
