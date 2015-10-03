class AddVarietyColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :variety, :string
  end
end
