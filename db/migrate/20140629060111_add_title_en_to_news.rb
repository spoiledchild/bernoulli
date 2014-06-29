class AddTitleEnToNews < ActiveRecord::Migration
  def change
    add_column :news, :TitleEn, :string
  end
end
