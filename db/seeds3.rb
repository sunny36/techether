Resource.all.to_a.each do | resource |
  if resource.user_id.nil?
    resource.user_id = 302
    resource.save
  end
end