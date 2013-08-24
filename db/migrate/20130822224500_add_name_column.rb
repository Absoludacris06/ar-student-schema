require_relative '../config'

class AddNameColumn < ActiveRecord::Migration

  def up
    add_column :students, :name, :string
    add_column :students, :address, :string
    Student.all.each do |student|
      student.update_attributes! :name => student.first_name + " " + student.last_name
    end
    remove_column :students, :first_name
    remove_column :students, :last_name
  end

  def down
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    Student.all.each do |student|
      person.update_attributes! :first_name => student.name.match(/\w+/)[0]
      person.update_attributes! :last_name => student.name.match(/\w+/)[1]
    end
    remove_column :students, :name
    remove_column :students, :address
  end

end