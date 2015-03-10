User.where("email LIKE ?", "%example%").to_a.each do | user |
  Subject.find(user.subject_id).resources.to_a.each do | resource |
    Rating.create!(value: rand(4..5),
                   resource_id: resource.id,
                   user_id: user.id)
  end
end