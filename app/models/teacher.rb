require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  
  validates :email, uniqueness: true
  # validates :email, format: { with: /\S+@\S.\S{2,}[^.]/}

  # def name
    # self.first_name + " " + self.last_name
  # end
  has_many :students

end

