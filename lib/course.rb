class Course
  attr_accessor :title, :schedule, :description
  @@all = []

  def initialize
    @@all << self
  end

  self def reset_all
    @@all = []
  end
end
