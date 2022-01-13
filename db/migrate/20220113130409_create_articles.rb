class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :alt
      t.string :title
      t.string :caption
      t.text :content

      t.timestamps
    end
  end
end
