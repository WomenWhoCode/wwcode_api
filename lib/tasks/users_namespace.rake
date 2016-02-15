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

  desc "Import Event Data"
  task import_events: :environment do
    json_file = JSON.parse(File.read('../Event.json'))
    json_file["results"].each do |event|
      new_event = Event.create(objectId: event["objectId"], featured: event["featured"], network_id: event["network_id"], url: event["url"], event_date: event["event_date"], location: event["location"], title: event["title"], subscribe_count: event["subscribe_count"], createdAt: event["createdAt"], description: event["description"], meetup_event_id: event["meetup_event_id"], time_zone: event["time_zone"], hex_color: event["hex_color"])
      p new_event
    end
  end

end