class SeedController < ApplicationController
  skip_before_action :verify_authenticity_token  # Это позволяет отправлять запросы без CSRF токена

  def run
    # Ваш код для сидирования данных
    Rails.application.load_seed
    render json: { message: "Seeding completed successfully" }, status: :ok
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end
end
