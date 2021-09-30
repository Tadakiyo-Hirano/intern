class CreateTodayTranings < ActiveRecord::Migration[5.2]
  def change
    create_table :today_tranings do |t|
      
      t.date :start_time
      t.string :traning_name
      t.string :sub_body_part
      t.string :body_part
      t.string :traningg_type
      t.float :traning_weight
      t.float :traning_reps
      t.string :traning_note
      
      t.references :user, foreign_key: true
      t.references :traningevent, foreign_key: true
    

      t.timestamps
    end
  end
end
