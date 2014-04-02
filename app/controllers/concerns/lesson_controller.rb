class LessonsController < ApplicationController

  def index
    @lesson = Lessons.all
    render ('lessons/index.html.erb')
  end



end
