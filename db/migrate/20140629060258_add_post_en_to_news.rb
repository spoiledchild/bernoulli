class AddPostEnToNews < ActiveRecord::Migration
  def change
    add_column :news, :PostEn, :text
  end
end
