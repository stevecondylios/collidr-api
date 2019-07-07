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


curl -X DELETE "http://www.collidr-api.com//flatfiles/slkdfjsdjfk/custom_destroy?package_names=IIII"


