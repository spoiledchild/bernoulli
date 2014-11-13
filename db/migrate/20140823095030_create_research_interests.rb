class CreateResearchInterests < ActiveRecord::Migration
  def change
    create_table :research_interests do |t|
      t.text :research_introduciton
      t.string :research_topic
      t.string :research_topic_en
      t.text :research_details
      t.text :research_details_en
      t.text :current_projects

      t.timestamps
    end
  end
end
