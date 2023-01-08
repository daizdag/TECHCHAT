class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :name
      t.integer :question_id
      t.timestamps
    end
  end
end
