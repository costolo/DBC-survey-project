class CreateSurveyUsers < ActiveRecord::Migration
  def change
    create_table :survey_users do |t|
      t.references :survey, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
