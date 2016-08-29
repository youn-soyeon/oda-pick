class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :birth, :datetime
    add_column :users, :gender, :string
    add_column :users, :occupation, :string
  end
end
