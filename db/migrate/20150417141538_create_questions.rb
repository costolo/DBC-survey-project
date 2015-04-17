class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content, null: false
      t.references :survey, null: false

      t.timestamps
    end
  end
end
