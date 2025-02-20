class CreateVacancies < ActiveRecord::Migration[7.2]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :category
      t.string :salary
      t.string :city
      t.string :experience
      t.text :description
      t.references :employer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
