class Vacancy < ApplicationRecord
  belongs_to :employer
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
