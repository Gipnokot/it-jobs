# app/controllers/seeds_controller.rb
class SeedsController < ApplicationController
  skip_before_action :verify_authenticity_token  # Чтобы не было проблем с CSRF

  def run
    # Запуск Rake задачи
    system("bundle exec rake seed:run")
    render json: { message: "Seeding started" }, status: :ok
  end
end
