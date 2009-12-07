# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

source_type = SourceType.create!(:name => 'rss')

channel = Channel.create!(:name => 'general')

# Add HN

Source.create!(:source_type => source_type, :channel => channel, :name => 'Hacker News', :url => 'http://news.ycombinator.com/rss' )
Source.create!(:source_type => source_type, :channel => channel, :name => 'Reddit Programming', :url => 'http://www.reddit.com/r/programming.rss' )