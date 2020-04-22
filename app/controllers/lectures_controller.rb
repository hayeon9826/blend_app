class LecturesController < ApplicationController

  before_action :set_global_search_variable, only: [:index]

  def set_global_search_variable
    @q = Lecture.ransack(params[:q])
  end

  def index
    @recent = Lecture.last(3)
    @languages = Lecture.where(category: "언어").all
    @business = Lecture.where(category: 1).all
    @work = Lecture.where(category: 2).all
    @codding = Lecture.where(category: 3).all
    @culture = Lecture.where(category: 4).all
    @content = Lecture.where(category: 5).all
    if params[:q]
      @q = Lecture.ransack(params[:q])
      @lectures = @q.result(distinct: true)
      @lectures = @lectures.page(@page).per(12)
    end
  end

  def show
    @lecture = Lecture.find(params[:id])
  end
end
