require 'rss'
require 'open-uri'

class HomeController < ApplicationController
    def index
    end

    def energy
    	if File.exist?("public/bengaluru-power-news-cache.xml")
		begin
				File.open("public/bengaluru-power-news-cache.xml") do |rss|
					feed = RSS::Parser.parse(rss)
					@channel_title = feed.channel.title
					puts @channel_title.inspect
					@feed_items = feed.items
				end
		rescue
			@feed_items = []
		end
		end
    end
end
