class NewsController < ApplicationController

def show
  require 'rss'
  require 'open-uri'
  @rss_results = []
  rss = RSS::Parser.parse(open('http://www.dna.fr/rss').read, false).items[0..5]

  # puts rss.map(&:inspect).join(', \n')
  rss.each do |result|
    result = { title: result.title, pubDate: result.pubDate, link: result.link, description: result.description }
    @rss_results.push(result)
  end
  end
end
