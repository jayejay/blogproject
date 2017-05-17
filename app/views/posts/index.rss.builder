xml.instruct! :xml, :version => "1.0"
xml.rss :version => '2.0' do
  xml.channel do
    xml.title 'Sporting Nerds'
    xml.description 'Informatives, Neues und Lustiges über Spiele, Ernährung und Sport'
    xml.link root_url

    @posts.each do |post|
      xml.item do
        xml.title post.title
        xml.description post.content
        xml.pubDate post.published_at.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
      end
    end
  end
end