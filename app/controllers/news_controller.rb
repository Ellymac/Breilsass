class NewsController < ApplicationController

def showAlsace
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

  def showBretagne
    require 'rss'
    require 'open-uri'
    @rss_results = []
    rss = RSS::Parser.parse(open('http://www.ouest-france.fr/rss-en-continu.xml?region=bretagne').read, false).items[0..5]

    rss.each do |result|
      result = { title: result.title, pubDate: result.pubDate, link: result.link, description: result.description }
      @rss_results.push(result)
      end
    end
end
