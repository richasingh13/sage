class AddFieldTo < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :slug, :string
  end
end
