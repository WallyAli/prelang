json.array!(@parents) do |parent|
  json.extract! parent, :id, :first_name, :last_name, :case_number, :address, :city, :state, :zipcode, :email, :phone
  json.url parent_url(parent, format: :json)
end
