# app/controllers/seed_controller.rb

require 'rake'

class SeedController < ApplicationController
  def run
    begin
      # Инициализация объекта Rake
      rake = Rake.application
      rake.init
      rake.load_rakefile

      # Вызов задачи db:seed
      Rake::Task['db:seed'].invoke

      # Возвращаем успешный ответ
      render json: { message: 'Seed complete!' }, status: :ok
    rescue => e
      # Если произошла ошибка, возвращаем ошибку
      render json: { error: e.message }, status: :unprocessable_entity
    end
  end
end
