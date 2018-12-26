def create_categories
	Category.create(name: 'technology')
	Category.create(name: 'music')
	Category.create(name: 'art')
	Category.create(name: 'trade')
	Category.create(name: 'language')
	Category.create(name: 'craft')
	Category.create(name: 'food')
	Category.create(name: 'literature')
end
 
def create_resources
	Resource.create(category_id: 1, format: 'website', name: 'Traversy Media', url: 'http://www.traversymedia.com/', description: 'Web development and programming in a simple and understandable way.')
	Resource.create(category_id: 1, format: 'website', name: 'Derek Banas', url: 'http://www.newthinktank.com', description: 'Highly focused tutorials on programming and other topics.')
	Resource.create(category_id: 1, format: 'website', name: 'FunFunFunction', url: 'https://www.youtube.com/channel/UCO1cgjhGzsSYb1rsB4bFe4Q', description: 'Javascript tutorials')
	Resource.create(category_id: 1, format: 'website', name: 'FreeCodeCamp', url: 'https://www.youtube.com/playlist?list=PLWKjhJtqVAbleDe3_ZA8h3AO2rXar-q2V', description: 'Javascript tutorials')
	Resource.create(category_id: 1, format: 'website', name: 'Udemy', url: 'https://www.udemy.com/home/my-courses/learning/', description: 'Online courses')
	Resource.create(category_id: 1, format: 'website', name: 'Coding Bookmarks1', url: 'https://docs.google.com/spreadsheets/u/2/d/1gTP81NGz2P7lTcXwjCSLRBLqjg0_lJ-Ke3X3xkudvAI/edit#gid=708485659', description: 'Spreadsheet of resources')
	Resource.create(category_id: 1, format: 'website', name: 'tekmarks', url: 'https://www.smithwebtek.com/bookmarks', description: 'Table of bookmarks')
end

def create_tracks
	Track.create(category_id: 1, name: 'React hello world', description: 'do hello world in React', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'Bulma hello world', description: 'do hello world in Bulma', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'CSS grid hello world', description: 'do hello world in CSS grid', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'CSS flexbox hello world', description: 'do hello world in CSS flexbox', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'postGIS hello world', description: 'do hello world in postGIS', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'Mapbox hello world', description: 'do hello world in Mapbox', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'Shapefile hello world', description: 'do hello world in Shapefile', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'CARTO hello world', description: 'do hello world in CARTO', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'Leaflet hello world', description: 'do hello world in Leaflet', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'ArcMap hello world', description: 'do hello world in ArcMap', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'JavaScript', description: 'Read Eloquent, YDKJS, 3 front end apps', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'CSS grid', description: 'do tutorials, build portfolio samples', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'postGIS', description: 'do course, build demo app with Boston geodata', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'SQL', description: 'read and do Kellenberger book', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'Python', description: 'read book, follow video, build demo app', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'PHP', description: 'read book, follow video, build demo app', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'React', description: 'read docs, finish Udemy course', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'Ember', description: 'read book, follow video, build demo app', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')
	Track.create(category_id: 1, name: 'Vue', description: 'read book, follow video, build demo app', status: 'pending', start_date: '12-26-2018', goal_date: '1/1/2019')

end

def create_activities
	Activity.create(name: '01_hello_world', description: 'find tutorial, install dependencies, do hello world', status: 'pending')
	Activity.create(name: '02_improvise', description: 'improvise basic version', status: 'pending')
	Activity.create(name: '03_quantity', description: 'repeat for retention, do it alot', status: 'pending')
	Activity.create(name: '04_quality', description: 'research more, go deeper', status: 'pending')
end

def create_track_activities
	TrackActivity.create(track_id: 1, activity_id: 1)
	TrackActivity.create(track_id: 1, activity_id: 2)
	TrackActivity.create(track_id: 1, activity_id: 3)
	TrackActivity.create(track_id: 1, activity_id: 4)

	TrackActivity.create(track_id: 2, activity_id: 1)
	TrackActivity.create(track_id: 2, activity_id: 2)
	TrackActivity.create(track_id: 2, activity_id: 3)
	TrackActivity.create(track_id: 2, activity_id: 4)

	TrackActivity.create(track_id: 3, activity_id: 1)
	TrackActivity.create(track_id: 3, activity_id: 2)
	TrackActivity.create(track_id: 3, activity_id: 3)
	TrackActivity.create(track_id: 3, activity_id: 4)

	TrackActivity.create(track_id: 4, activity_id: 1)
	TrackActivity.create(track_id: 4, activity_id: 2)
	TrackActivity.create(track_id: 4, activity_id: 3)
	TrackActivity.create(track_id: 4, activity_id: 4)

	TrackActivity.create(track_id: 5, activity_id: 1)
	TrackActivity.create(track_id: 5, activity_id: 2)
	TrackActivity.create(track_id: 5, activity_id: 3)
	TrackActivity.create(track_id: 5, activity_id: 4)

	TrackActivity.create(track_id: 6, activity_id: 1)
	TrackActivity.create(track_id: 6, activity_id: 2)
	TrackActivity.create(track_id: 6, activity_id: 3)
	TrackActivity.create(track_id: 6, activity_id: 4)

	TrackActivity.create(track_id: 7, activity_id: 1)
	TrackActivity.create(track_id: 7, activity_id: 2)
	TrackActivity.create(track_id: 7, activity_id: 3)
	TrackActivity.create(track_id: 7, activity_id: 4)

	TrackActivity.create(track_id: 8, activity_id: 1)
	TrackActivity.create(track_id: 8, activity_id: 2)
	TrackActivity.create(track_id: 8, activity_id: 3)
	TrackActivity.create(track_id: 8, activity_id: 4)

	TrackActivity.create(track_id: 9, activity_id: 1)
	TrackActivity.create(track_id: 9, activity_id: 2)
	TrackActivity.create(track_id: 9, activity_id: 3)
	TrackActivity.create(track_id: 9, activity_id: 4)

	TrackActivity.create(track_id: 10, activity_id: 1)
	TrackActivity.create(track_id: 10, activity_id: 2)
	TrackActivity.create(track_id: 10, activity_id: 3)
	TrackActivity.create(track_id: 10, activity_id: 4)
end
 
def create_track_resources
	TrackResource.create(track_id: 1, resource_id: 1)
	TrackResource.create(track_id: 1, resource_id: 2)
	TrackResource.create(track_id: 1, resource_id: 3)
	TrackResource.create(track_id: 1, resource_id: 4)

	TrackResource.create(track_id: 2, resource_id: 1)
	TrackResource.create(track_id: 2, resource_id: 2)
	TrackResource.create(track_id: 2, resource_id: 3)
	TrackResource.create(track_id: 2, resource_id: 4)

	TrackResource.create(track_id: 3, resource_id: 1)
	TrackResource.create(track_id: 3, resource_id: 2)
	TrackResource.create(track_id: 3, resource_id: 3)
	TrackResource.create(track_id: 3, resource_id: 4)
end

def main
	create_categories
	create_resources
	create_tracks
	create_activities
	create_track_activities
	create_track_resources
end

main