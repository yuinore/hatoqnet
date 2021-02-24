class CreateTopLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :top_links do |t|
      t.string :name
      t.string :color
      t.string :shadow_color

      t.timestamps
    end
  end
end
