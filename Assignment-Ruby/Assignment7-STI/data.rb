

=begin
	
Following is the assignment details.

    Create a new rails app
    Implement STI with Person, User, Admin
    User and Admin will  inherit through Person
    A user can have many posts
    A admin can have multiple accounts
    There should be  bi-directional relationships between these models
    Also you need to write a script that will create a user and his posts, admin and his accounts


Your models should be on these lines, feel free to add your own relevant attributes

    Person: email, name
    User: email, name
    Admin: email, name
    Account: account_number
    Post: content, description



=end


#creating user object
user = User.create(name: "David", email: "devid@gmail")

#adding posts
user_post = user.posts.build(content:"Ruby",description:"Ruby is easy")
user_post.save

user_post = user.posts.build(content:"Math",description:"Math is easy")
user_post.save

#creating admin object
admin = Admin.create(name: "Peter", email: "peter@gmail")

#adding accounts
admin_account = admin.accounts.build(account_number: "3")
admin_account.save

admin_account = admin.accounts.build(account_number: "1")
admin_account.save