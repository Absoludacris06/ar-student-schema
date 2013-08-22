require_relative '../../db/config'

class Student < ActiveRecord::Base
  
  has_one :teacher

  validates :email, format: { with: /\S+@\S+.\S{2,}[^.]/}
  validates :email, uniqueness: true

  validates :age, numericality: {greater_than: 5}
  # validates :phone, format: {with: /\W\d{3}\W\s\d{3}-\d{4}\sx?(\d{4})?/}

  def name
    self.first_name + " " + self.last_name
  end

  def age
    bday = self.birthday
    now = Time.now.utc.to_date
    now.year - bday.year - ((now.month > bday.month || (now.month == bday.month && now.day >= bday.day)) ? 0 : 1)
  end

 
# implement your Student model here
end

