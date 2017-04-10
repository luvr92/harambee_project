class AddEmailToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :email, :string
  end
end
