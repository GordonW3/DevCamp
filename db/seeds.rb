User.create!(
	email: "test@test.com",
	password: "123456",
	password_confirmation: "123456",
	name: 'GORDOOOO user',
	roles: 'site_admin'
	)

puts 'Admin created'

User.create!(
	email: "testy@test.com",
	password: "123456",
	password_confirmation: "123456",
	name: 'guest user',
	)

puts 'user created'

3.times do |topic|
	Topic.create!(
		title: "topic #{topic}"
		)
end

puts "3 tipoc creation"

10.times do |blog|
	Blog.create!(
		topic_id: Topic.last.id,
		title: "taco nacho amego #{blog}",
		body: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untraveled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided."
	)

end

puts "10 blog posts created"

8.times do |portfolio_items|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_items}",
		subtitle:"ruby on rails",
		body: "on the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untraveled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"

		)
end
1.times do |portfolio_items|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_items}",
		subtitle:"andgler",
		body: "on the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untraveled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"

		)
end

puts "9 portfolio items created"


3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}",
	)
end
puts "3 technologies created"
