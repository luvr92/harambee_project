class AddEmailToInterns < ActiveRecord::Migration[5.0]
  def change
    add_column :interns, :email, :string
  end
end
