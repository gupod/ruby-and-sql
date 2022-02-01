# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

apple = Company.where({name:"Apple Inc."})[0]
apple_id=apple.id

amzn = Company.where({name:"Amazon Inc."})[0]
amzn_id=amzn.id

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)

values ={first_name: "Gus", 
    last_name: "Pires", 
    email: "gp@od.com", 
    phone_number: "111-111-1111",
    company_id: apple_id}

gus = Contact.new(values)
gus.save

values ={first_name: "Sug", 
    last_name: "Serip", 
    email: "od@gp.com", 
    phone_number: "111-111-1111",
    company_id: amzn_id}

sug = Contact.new(values)
sug.save
puts "Contacts: #{Contact.all.count}"

all_contacts = Contact.all

for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end


# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
