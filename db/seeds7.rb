Subject.all.to_a.each do | subject |
  if subject.user_id.nil?
    subject.user_id = 302
  end
end