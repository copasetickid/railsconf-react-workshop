class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :published_date
      t.text :body
      t.boolean :draft, default: true
      t.boolean :published, default: false
      t.integer :status, default: 0, null: false 
      t.belongs_to :author
      t.timestamps
    end
  end
end
