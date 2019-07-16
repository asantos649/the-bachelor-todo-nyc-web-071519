data1 = { 
   "season 30": [
     {
       "name":      "Beth Smalls",
       "age":       "26",
       "hometown":  "Great Falls, Virginia",
       "occupation":"Nanny/Freelance Journalist",
       "status":    "Winner"
     },
     {
       "name":       "Becca Tilley",
       "age":        "27",
       "hometown":   "Shreveport, Louisiana",
       "occupation": "Chiropractic Assistant",
       "status":     "Eliminated Week 8"
     }
   ],
   "season 29": [
     {
       "name":      "Ashley Yeats",
       "age":       "24",
       "hometown":  "Denver, Colorado",
       "occupation":"Dental Assitant",
       "status":    "Winner"
     },
     {
       "name":       "Sam Grover",
       "age":        "29",
       "hometown":   "New York, New York",
       "occupation": "Entertainer",
       "status":     "Eliminated Week 6"
     }
   ]
 }
require 'pry'

def get_all_contestants(data)
   total_list = []
   data.map{|season,contestants|
      total_list.concat(contestants)
   }
   total_list
 end

 puts get_all_contestants(data1)

#def get_contestant_name(data, occupation)
   
# end

#get_contestant_name(data1,"doctor")



