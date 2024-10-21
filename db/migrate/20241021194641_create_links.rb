class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :url
      t.string :url_text
      t.string :image
      t.string :image_alt_text

      t.timestamps
    end
  end
end
