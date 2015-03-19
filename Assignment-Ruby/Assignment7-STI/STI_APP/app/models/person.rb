class Person < ActiveRecord::Base
     
    self.inheritance_column = :type

    # We will need a way to know which person
    # will subclass the person model
    def self.types
      %w(User Admin)
    end
     scope :users, -> { where(type: 'User') } 
     scope :admins, -> { where(type: 'Admin') }
     delegate :users, :admins,to: :people
end
