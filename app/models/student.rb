class Student < ActiveRecord::Base
    has_many :books
    has_many :books through: :records
end