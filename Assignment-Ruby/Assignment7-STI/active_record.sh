#create rail App
rails new STI_APP


 cd STI_APP
rails g model Person name:string email:string type:string

cd app/models/

touch user.rb 
echo "class User < Person
	has_many :posts
end" > user.rb

touch admin.rb 
echo "class Admin < Person
	has_many :accounts
end" > admin.rb

rails g model Post content:string description:string user:references
rails g model Account account_number:integer admin:references

 echo "class Person < ActiveRecord::Base
     
    self.inheritance_column = :type

    # We will need a way to know which person
    # will subclass the person model
    def self.types
      %w(User Admin)
    end
     scope :users, -> { where(type: 'User') } 
     scope :admins, -> { where(type: 'Admin') }
     delegate :users, :admins,to: :people
end" > person.rb


echo "class Post < ActiveRecord::Base
  belongs_to :user
end" > post.rb

echo "class Account < ActiveRecord::Base
  belongs_to :admin
end" > account.rb
 cd ..
 cd .. 




bin/rake db:migrate
