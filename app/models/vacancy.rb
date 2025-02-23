class Vacancy < ApplicationRecord
  belongs_to :employer

  validates :title, presence: true
  validates :category, presence: true
  validates :city, presence: true
  validates :description, presence: true
  validates :experience, presence: true
  validates :salary, presence: true
  validates :employer_id, presence: true
end

# == Schema Information
#
# Table name: vacancies
#
#  id          :bigint           not null, primary key
#  category    :string
#  city        :string
#  description :text
#  experience  :string
#  salary      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employer_id :bigint           not null
#
# Indexes
#
#  index_vacancies_on_employer_id  (employer_id)
#
# Foreign Keys
#
#  fk_rails_...  (employer_id => employers.id)
#
