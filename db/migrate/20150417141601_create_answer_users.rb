class CreateAnswerUsers < ActiveRecord::Migration
  def change
    create_table :answer_users do |t|
      t.references :answer, null: false
      t.references :user, null: false
      t.references :question, null: false

      t.timestamps
    end
  end
end
