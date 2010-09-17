
Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new('/news')
  extension Awestruct::Extensions::Paginator.new(:posts, '/news/index', :per_page => 5)
  extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::Atomizer.new(:posts, '/news.atom')
  extension Awestruct::Extensions::IntenseDebate.new()

  helper Awestruct::Extensions::GoogleAnalytics
  helper Awestruct::Extensions::Partial
end

