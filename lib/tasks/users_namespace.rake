namespace :parse_data do
  desc "Import User Data"
  task import_users: :environment do
    json_file = JSON.parse(File.read('../_User.json'))
    p json_file
    json_file.each do |user|
      new_user = User.create(username: user["username"], email: user["email"], password:"password")
      p new_user
    end
  end

  # desc "Import Event Data"
  # task import_events: :environment do
  #   json_file = JSON.parse(File.read('../Event.json'))
  #   p json_file
  #   json_file.each do |event|
  #     new_event = Event.create(objectId: event["objectId"], featured: event["featured"], )


end