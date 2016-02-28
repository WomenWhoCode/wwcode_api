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

  desc "Import Network Data"
  task import_network_data: :environment do
    Network.all.each do |network|
      network.destroy
    end
    json_file = JSON.parse(File.read('../Network.json'))
    json_file["results"].each do |network|
      if network["location"] == nil
        latitude = nil
        longitude = nil
      else
        latitude = network["location"]["latitude"]
        longitude = network["location"]["longitude"]
      end
      new_network = Network.create(objectId: network["objectId"], awesome_count: network["awesome_count"], image_url: network["image_url"], latitude: latitude, longitude: longitude, meetup_group_id: network["meetup_group_id"], time_zone: network["time_zone"], title: network["title"], createdAt: network["createdAt"], updatedAt: network["updatedAt"])
      p new_network
    end
  end

  desc "Import Profile Data"
  task import_profiles: :environment do
    json_file = JSON.parse(File.read('../Profile.json'))
    json_file["results"].each do |profile|
      new_profile = Profile.create(objectId: params[:objectId], full_name: params[:full_name],image_url: params[:image_url], job_title: params[:job_title], latitude: params[:latitude], longitude: params[:longitude], network_id: params[:network_id], photo: params[:photo], theme_type: params[:theme_type], user_id: params[:user_id], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
      p new_profile
    end
  end

end