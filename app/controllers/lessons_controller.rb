class LessonsController < ApplicationController

  def index
    @lesson = Lesson.all
    render ('lessons/index.html.erb')
  end

  def new
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lesson])

    if @lesson.save
      @lesson = Lesson.all
      render('lessons/index.html.erb')
    else
      render('lessons/new.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('/lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      render('/lessons/success.html.erb')
    else
      render('/lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    render('/lessons/destroy.html.erb')
  end
end







