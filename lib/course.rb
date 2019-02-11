class Course
  attr_accessor :title, :schedule, :description
  @@all = []

  def initialize(title, schedule, desc)
    @title = title
    @schedule = schedule
    @description = desc
    @@all << self
  end
end
