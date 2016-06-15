class CreateStartedChallenges < ActiveRecord::Migration
  def change
    create_table :started_challenges do |t|
      t.references :user, index: true, foreign_key: true
      t.references :challenge, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
