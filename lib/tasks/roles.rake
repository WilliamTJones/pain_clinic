namespace :roles do
  task :import => :environment do 
    user = User.create(:email=>'none@none.com')
    Role.create(:description=>'admin', :user_id=>user.id)
  end
end

