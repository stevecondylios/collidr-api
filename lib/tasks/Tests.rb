# Tests






# Index 
curl "http://localhost:3000/flatfiles/sdfsdf"

# Post
curl -H "Accept: application/json" -H "Content-type: application/json" -d '{"package_names": "IIII", "function_names": "IIIII"}' "http://localhost:3000/flatfiles/sldkf"
# https://stackoverflow.com/questions/23582389/rails-nomethoderror-undefined-method-url-for-controller-i-cant-seem-to-res

# Delete # Note: if you get the name of the column wrong, it deletes everything! i.e. package_name instead of package_names
curl -X DELETE "http://localhost:3000/flatfiles/slkdfjsdjfk/custom_destroy?package_names=IIII"
# Note: if you run this, it will delete everything!! # curl -X DELETE "http://localhost:3000/flatfiles/slkdfjsdjfk/custom_destroy"






# Same but live

curl "http://www.collidr-api.com/flatfiles/sdfsdf"

curl -H "Accept: application/json" -H "Content-type: application/json" -d '{"package_names": "IIII", "function_names": "IIIII"}' "http://www.collidr-api.com/flatfiles/sldkf"

curl -X DELETE "http://www.collidr-api.com/flatfiles/slkdfjsdjfk/custom_destroy?package_names=IIII"



# SecureRandom.urlsafe_base64(16)

# Key.create(name: "EC2", key: "hardcodedkey", role: "admin")
# Key.create(name: "collidrpackage", key: "hardcodedkey", role: "member")



curl -H "Accept: application/json" -H "Content-type: application/json" -d '[{"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}]' "http://www.collidr-api.com/flatfiles/sdfsdf"



# EVERYTHING BELOW IS HACKING


# https://stackoverflow.com/questions/56966747/json-for-passing-multiple-records-to-post-request-to-rails-api-create-action/56966836?noredirect=1#comment100472552_56966836
# https://stackoverflow.com/questions/56967541/how-to-alter-params-method-to-accept-a-json-array-in-rails-controller/56967672?noredirect=1#comment100474258_56967672


[{"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}]






curl -H "Accept: application/json" -H "Content-type: application/json" -d '{"package_names": "IIII", "function_names": "IIIII"}' "http://localhost:3000/flatfiles/dfgdfgdfg"

curl -H "Accept: application/json" -H "Content-type: application/json" -d '[{"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}]' "http://localhost:3000/flatfiles/sdfsdfsdf"

curl -H "Accept: application/json" -H "Content-type: application/json" -d '{ "flatfile" : [{"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}]}' "http://localhost:3000/flatfiles/sdfsdfsdf"


curl -d 'flatfile: {package_names_and_function_names: [{"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}]}' "http://localhost:3000/flatfiles/sdfsdf"




{ "flatfile" : [{"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}, {"package_names": "Fred", "function_names": "5"}]}


      "model: [
        {
        person1: 'Harry',
        person2: 'max'
        }, 
        {
        animal1: 'cow',
        animal2: 'dog'
        }
      ]"







