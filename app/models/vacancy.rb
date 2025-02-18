class Vacancy < ApplicationRecord
  scope :by_category, ->(category) { where(category: category) if category.present? }
  scope :by_city, ->(city) { where(city: city) if city.present? }
  scope :by_experience, ->(experience) { where(experience: experience) if experience.present? }
  scope :by_min_salary, ->(salary) { where(salary: salary..) if salary.present? }
  scope :search_by_title, ->(title) { where("title ILIKE ?", "%#{title}%") if title.present? }
  scope :search_by_description, ->(query) { where("description ILIKE ?", "%#{query}%") if query.present? }
  scope :recent, -> { order(created_at: :desc) }
end


# == Schema Information
#
# Table name: vacancies
#
#  id          :bigint           not null, primary key
#  category    :string
#  city        :string
#  contacts    :text
#  description :text
#  experience  :string
#  salary      :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
