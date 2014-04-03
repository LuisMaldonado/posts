class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :coment
      t.references :post, index: true

      t.timestamps
    end
  end
end
