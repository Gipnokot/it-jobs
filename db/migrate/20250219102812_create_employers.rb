class CreateEmployers < ActiveRecord::Migration[7.2]
  def change
    create_table :employers do |t|
      t.string :name
      t.text :contact_info

      t.timestamps
    end
  end
end
