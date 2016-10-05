class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.integer :status
      t.datetime :published_at

      t.timestamps null: false
    end
  end

end
