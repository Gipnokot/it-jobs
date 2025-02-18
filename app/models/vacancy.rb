class Vacancy < ApplicationRecord
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
