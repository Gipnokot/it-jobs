class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.order(created_at: :desc).paginate(page: params[:page], per_page: 10)

    @vacancies = @vacancies.where("category ILIKE ?", "%#{params[:category]}%") if params[:category].present?
    @vacancies = @vacancies.where("city ILIKE ?", "%#{params[:city]}%") if params[:city].present?

    if params[:salary_from].present? && params[:salary_to].present?
      @vacancies = @vacancies.where(salary: params[:salary_from]..params[:salary_to])
    elsif params[:salary_from].present?
      @vacancies = @vacancies.where(salary: params[:salary_from]..)
    elsif params[:salary_to].present?
      @vacancies = @vacancies.where(salary: ..params[:salary_to])
    end

    @vacancies = @vacancies.where("experience ILIKE ?", "%#{params[:experience]}%") if params[:experience].present?
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def new
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)

    if @vacancy.save
      redirect_to @vacancy, notice: t(".success")
    else
      Rails.logger.debug @vacancy.errors.full_messages # Логируем ошибки валидации
      render :new, status: :unprocessable_entity
    end
  end

  private

  def vacancy_params
    params.require(:vacancy).permit(:title, :category, :salary, :city, :experience, :description, :employer_id, :employer_id)
  end
end
