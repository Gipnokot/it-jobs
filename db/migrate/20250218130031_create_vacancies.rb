class CreateVacancies < ActiveRecord::Migration[7.2]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :category
      t.integer :salary
      t.string :city
      t.string :experience
      t.text :description
      t.text :contacts

      t.timestamps
    end
  end
end
