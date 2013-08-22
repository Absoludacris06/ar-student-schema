require_relative '../config'

# this is where you should use an ActiveRecord migration to

    # expected = {
    #   :integer => ["id"],
    #   :string => ["first_name", "last_name", "gender", "email", "phone"],
    #   :date => ["birthday"]
    # }

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birthday
      # t.timestamps
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end

  # def down
  #   drop_table 
end
