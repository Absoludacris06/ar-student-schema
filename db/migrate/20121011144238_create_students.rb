require_relative '../config'

# this is where you should use an ActiveRecord migration to

# expected = {
#   :integer => ["id"],
#   :string => ["first_name", "last_name", "gender", "email", "phone"],
#   :date => ["birthday"]
# }

class CreateStudents < ActiveRecord::Migration

  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
    end

    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birthday
      # t.timestamps
    end

    create_table :teacher_students do |t|
      t.belongs_to :teacher
      t.belongs_to :students
    end
  end
end
