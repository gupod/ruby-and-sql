# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Company.all.count} companies in our database"

# 2. create new companies
values ={name: "Apple Inc.", 
    url: "apple.com", 
    city: "Cupertino", 
    state: "CA"}

apple = Company.new(values)
apple.save
puts "There are now #{Company.all.count} companies in our database"

values ={name: "Amazon Inc.", 
    url: "amazon.com", 
    city: "Seattle", 
    state: "WA"}

amazon = Company.new(values)
amazon.save
puts "There are now #{Company.all.count} companies in our database"

# 3. query companies table


ca_company = Company.where({state:"CA"})[0]
puts ca_company.inspect

# 4. read column values from row

ca_company.slogan="Think different."
ca_company.save

# 5. update attribute value
