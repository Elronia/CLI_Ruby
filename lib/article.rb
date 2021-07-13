class Article 
    attr_accessor :source, :author, :title, :description, :url, :urlToImage, :publishedAt, :content, :id

    @@all = []
    @@id = 0

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}
        @@id += 1
        self.id = @@id
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.listArticles
        @@all.each do |article|
            puts("#{article.id} " + article.title)
        end
    end
end 