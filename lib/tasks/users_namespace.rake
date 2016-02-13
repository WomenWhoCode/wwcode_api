namespace :users_namespace do
  desc "TODO"
  task import_users: :environment do
  File.open('../_User.json', 'r') do |file|
    file.each do |line|
      user_attrs = JSON.parse line
      User.create! user_attrs
    end
  end
end

end
