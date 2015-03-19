Subject.all.to_a.each do | subject |
  if subject.created_at.nil?
    subject.created_at = '2015-03-11 22:54:38'
    subject.save
  end
end

Resource.all.to_a.each do | resource |
  if resource.created_at.nil?
    resource.created_at = '2015-03-11 22:54:38'
    resource.save
  end
end

Rating.all.to_a.each do | rating |
  if rating.created_at.nil?
    rating.created_at = '2015-03-11 22:54:38'
    rating.save
  end
end