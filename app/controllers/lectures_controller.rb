class LecturesController < ApplicationController

  before_action :set_global_search_variable, only: [:index, :search]

  def set_global_search_variable
    @q = Lecture.ransack(params[:q])
  end

  def index
    @recent = Lecture.last(3)
    @languages = Lecture.where(category: 0).all.last(5)
    @business = Lecture.where(category: 1).all.last(5)
    @work = Lecture.where(category: 2).all.last(5)
    @codding = Lecture.where(category: 3).all.last(5)
    @culture = Lecture.where(category: 4).all.last(5)
    @content = Lecture.where(category: 5).all.last(5)
    if params[:q]
      @q = Lecture.ransack(params[:q])
      @lectures = @q.result(distinct: true)
      @lectures = @lectures.page(@page).per(12)
    end
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def search
    @lectures = Lecture.where(category: params[:lecture_id]).all
    if params[:q]
      @q = Lecture.ransack(params[:q])
      @search_lecture = @q.result(distinct: true)
      @search_lecture = @search_lecture.page(@page).per(12)
    end
  end
end
