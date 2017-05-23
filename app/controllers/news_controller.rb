class NewsController < ApplicationController

  def showAlsace
    require 'rss'
    require 'open-uri'
    @rss_results = []
    rss = RSS::Parser.parse(open('http://france3-regions.francetvinfo.fr/grand-est/actu/rss').read, false).items[0..5]
    # puts rss.map(&:inspect).join(', \n')
    rss.each do |result|
      if result.enclosure
        result = { title: result.title, pubDate: result.pubDate, link: result.link, description: result.description, img: result.enclosure.url }
      else
        result = { title: result.title, pubDate: result.pubDate, link: result.link, description: result.description }
      end
      @rss_results.push(result)
    end
  end

  def showBretagne
    require 'rss'
    require 'open-uri'
    @rss_results = []
    rss = RSS::Parser.parse(open('http://www.ouest-france.fr/rss-en-continu.xml?region=bretagne').read, false).items[0..5]

    rss.each do |result|
      if result.enclosure
        result = { title: result.title, pubDate: result.pubDate, link: result.link, description: result.description, img: result.enclosure.url }
      else
        result = { title: result.title, pubDate: result.pubDate, link: result.link, description: result.description }
      end
      @rss_results.push(result)
    end
  end
end
