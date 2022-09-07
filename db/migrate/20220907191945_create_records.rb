class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :book_author
      t.integer :student_age
      t.string :student_gender
      t.string :student_contact
      t.string :student_email
      t.integer :book_id
      t.integer :student_id
    end
  end
end
