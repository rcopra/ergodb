class CreateQuestionnaireResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaire_responses do |t|
      t.references :user, null: false, foreign_key: true
      t.json :responses
      t.string :session_id

      t.timestamps
    end
  end
end
