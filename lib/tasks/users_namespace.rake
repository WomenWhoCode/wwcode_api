namespace :users_namespace do
  desc "import user data"
  task import_users: :environment do
    File.open('../_User.json', 'r') do |file|
      file.each do |line|
        users_attrs = JSON.parse line
        User.create! users_attrs
      end
    end
  end

end
