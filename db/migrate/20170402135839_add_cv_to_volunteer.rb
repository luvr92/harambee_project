class AddCvToVolunteer < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :cv, :string
  end
end
