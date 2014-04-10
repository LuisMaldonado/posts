class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      t.integer :like
      belongs_to :HistoryPost
      t.timestamps
    end
  end
end