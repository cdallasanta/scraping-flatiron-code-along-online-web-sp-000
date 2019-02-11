require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  def get_page
    Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end

  def get_courses
    get_page.css(".post")
  end

  def make_courses
    get_courses.each do |post|
      new_course = Course.new
      new_course.title = post.css("")
      new_course.schedule = post.css("")
      new_course.description = post.css("")
    end
  end
end
