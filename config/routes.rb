Rails.application.routes.draw do


# THIS ROUTES FILE CONTAINS 4 SECTIONS
# 1. ORIGINAL ROUTES
# 2. ROUTES WITH CUSTOM_DESTROY ACTION
# 3. INDIVIDUALLY DEFINED ROUTES
# 4. THE SAME ROUTES (WITH KEY) DEFINED THROUGH RESOURCES/COLLECTION





  # SECTION 1
  # resources :flatfiles







  # SECTION 2
  # resources :flatfiles do
  #   collection do
  #     delete :custom_destroy
  #   end
  # end







  # SECTION 3 
  # These three definitely work with the curl commands 
  get 'flatfiles/:key' => 'flatfiles#index'
  post 'flatfiles/:key' => 'flatfiles#create'
  delete 'flatfiles/:key/custom_destroy' => 'flatfiles#custom_destroy'


# # Index 
# curl "http://localhost:3000/flatfiles/sldkf"

# # Post
# curl -H "Accept: application/json" -H "Content-type: application/json" -d '{"package_names": "IIII", "function_names": "IIIII"}' "http://localhost:3000/flatfiles/absdfc"
# # https://stackoverflow.com/questions/23582389/rails-nomethoderror-undefined-method-url-for-controller-i-cant-seem-to-res

# # Delete # Note: if you get the name of the column wrong, it deletes everything! i.e. package_name instead of package_names
# curl -X DELETE "http://localhost:3000/flatfiles/slkdfjsdjfk/custom_destroy?package_names=IIII"
# # Note: if you run this, it will delete everything!! # curl -X DELETE "http://localhost:3000/flatfiles/slkdfjsdjfk/custom_destroy"







# SECTION 4
# https://stackoverflow.com/questions/56907363/how-to-pass-a-symbol-through-rails-routes-specified-through-resources/56909068#56909068
 # resources :flatfiles, path: 'flatfiles/:key' do
 #    collection do
 #      delete :custom_destroy
 #    end
 #  end

# NOTE: THE CURL COMMANDS ARE IDENTICAL TO SECTION 3 CURL COMMANDS





end
