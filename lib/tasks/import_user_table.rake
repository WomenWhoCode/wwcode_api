task :import_user_table do
  File.open('../_User.json', 'r') do |file|
    file.each do |line|
      users_attrs = JSON.parse line
      User.create! users_attrs
    end
  end
end
