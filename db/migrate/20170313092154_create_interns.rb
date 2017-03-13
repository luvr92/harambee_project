class CreateInterns < ActiveRecord::Migration[5.0]
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :accepts_treatment

      t.timestamps
    end
  end
end
