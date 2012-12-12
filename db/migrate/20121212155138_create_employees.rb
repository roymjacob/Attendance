class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :designation
      t.string :sex
      t.string :employee_code
      t.date :date_of_birth
      t.text :remarks

      t.timestamps
    end
  end
end
