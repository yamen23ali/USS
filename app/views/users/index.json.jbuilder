json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :tel, :mobile, :address, :contact_email, :facebook, :twitter, :instagram, :photo
  json.url user_url(user, format: :json)
end
