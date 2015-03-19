
Single Table Inheritance is, as the name suggests it, a way to add inheritance to your models. STI lets you save different models inheriting from the same model inside a single table.

For example, let’s say you have an employee model. The employees can be of two types : manager or developer. They pretty much share the same attributes and columns. However, their behavior should be different. Creating two tables having the exact same fields would be bad.

But here comes STI ! With STI, you can just keep your employee model and simply subclass it with your two types of employee. The only thing to do at the database level is to add a type column to the employees table that ActiveRecord will automatically use to identify the submodel. If you want to know more about STI and see a real example, keep reading !




IMP LINK
http://guides.rubyonrails.org/active_record_basics.html
http://samurails.com/tutorial/single-table-inheritance-with-rails-4-part-1/


