class AddKenyaToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :kenya, :boolean, :default => false
  end
end
