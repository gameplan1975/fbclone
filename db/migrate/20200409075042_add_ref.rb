class AddRef < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :user_id
  end
end
