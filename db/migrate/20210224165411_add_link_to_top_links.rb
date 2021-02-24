class AddLinkToTopLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :top_links, :link, :string, after: :name
  end
end
