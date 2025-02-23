class Employer < ApplicationRecord
  has_many :vacancies, dependent: :destroy

  validates :contact_info, presence: true
  validates :name, presence: true
end

# == Schema Information
#
# Table name: employers
#
#  id           :bigint           not null, primary key
#  contact_info :text
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
