require 'swagger_client'
puts $LOAD_PATH

api_instance = SwaggerClient::ArticlesApi.new
article = {
  "title" => "title_example",
  "body" => "body_example",
  "published" => true
}


begin
  #delete a company
  result = api_instance.public_api_post_account(article)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ArticlesApi->public_api_post_account: #{e}"
end