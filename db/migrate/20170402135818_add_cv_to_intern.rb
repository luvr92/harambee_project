class AddCvToIntern < ActiveRecord::Migration[5.0]
  def change
    add_column :interns, :cv, :string
  end
end
