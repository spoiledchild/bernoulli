class AddPublisherToNews < ActiveRecord::Migration
  def change
    add_column :news, :Publisher, :string
  end
end
