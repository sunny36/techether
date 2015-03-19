Subject.all.to_a.each do | subject |
  count = Resource.where("subject_id LIKE ? ", subject.id).count
  subject.resource_count = count
  subject.save
end