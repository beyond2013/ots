require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	 test  "should not save course without title" do
		 course = Course.new
		 assert_not course.save, "Should not save course without title"
	 end

	 test  "should not save course without code" do
		 course = Course.new
		 assert_not course.save, "Should not save course without code"
	 end


end
