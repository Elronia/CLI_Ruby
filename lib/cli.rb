class CLI
    # attr_accessor 
    def initialize
        Api.new("https://newsapi.org/v2/everything?q=Apple&from=2021-07-02&sortBy=popularity&apiKey=#{ENV['API_KEY']}").parse_json
        intro
    end 

    def intro
        puts('Welcome to the Most Popular Articles of the Day!')
        puts("Which article would you like to read? Please select the one you like.")
        Article.listArticles
    end
end 
