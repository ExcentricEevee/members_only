class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false, index: { name: "posts_by_title" }
      t.string :body, null: false, default: ""
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
