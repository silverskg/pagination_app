50.times do |n|
  body  = "投稿＿ #{n+1}"
  Post.create!(body:  body)
  end
