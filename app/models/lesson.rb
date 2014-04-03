class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :lesson_number, :presence => true
  # validates :content => :presence=> true
# default_scope order(:lesson_number)

  def next
    if lesson_number < Lesson.all.last.lesson_number
      Lesson.all.detect {|lesson| lesson.lesson_number < lesson_number}
    else
      Lesson.find_by(lesson_number: lesson_number)
    end
  end

  # def previous
  #   if lesson_number == 1
  #     Lesson.find_by(lesson_number: lesson_number)
  #   else
  #     Lesson.all.reverse.detect {|lesson| lesson.lesson_number < lesson_number}
  #   end
  # end
end
