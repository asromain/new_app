FactoryGirl.define do
	factory :user do
		sequence(:name)  { |n| "Person #{n}" }
		sequence(:email) { |n| "person_#{n}@example.com" }
		password "foobar"
		password_confirmation "foobar"

		# Decommenter quand admin sera fait
		# factory :admin do
		# 	  admin true
		# end
	end

	factory :micropost do
		content "Lorem ipsum de la vaga"
		user
	end
end