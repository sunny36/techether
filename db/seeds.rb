Subject.all.to_a.each do | subject |
  count = User.where("subject_id LIKE ? ", subject.id).count
  subject.user_count = count
  subject.save
end