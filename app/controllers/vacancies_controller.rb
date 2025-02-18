class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def vacancy_params
    params.require(:vacancy).permit(:title, :category, :salary, :city, :experience, :description, :contacts)
  end
end
