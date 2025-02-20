require 'faker'

Faker::Config.locale = 'ru'

50.times do
  employer = Employer.create!(
    name: Faker::Company.name,
    contact_info: Faker::PhoneNumber.phone_number
  )

  Vacancy.create!(
    title: Faker::Job.title,
    category: [ 'Разработчик', 'Системный администратор', 'Тестировщик', 'Менеджер проектов', 'Аналитик данных' ].sample,
    salary: rand(50_000..150_000),
    city: Faker::Address.city,
    experience: "#{rand(1..5)} года",
    description: "Работа в команде над крупными проектами. Необходимы знания #{[ 'Ruby on Rails', 'JavaScript', 'Python', 'Java', 'C#', 'SQL', 'Linux' ].sample}. Опыт работы с инструментами разработки приветствуется.",
    employer_id: employer.id
  )
end

Rails.logger.info "IT вакансии успешно добавлены!"
