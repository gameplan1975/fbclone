class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :blog_image
      t.text :content
      t.timestamps
    end
  end
end
