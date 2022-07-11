require 'json'
require 'rest-client'
require 'open-uri'

#url = "https://reqres.in/api/users?page=1"
#response = RestClient.get(url)
#data_h = JSON.parse(response)
#print data_h.keys

#data_h['data'].each do |user|
  #@email = user['email']
  #@first_name = user['first_name']
  #@last_name = user['last_name']
  #@avatar = user['avatar']
  #User.create(email: @email, first_name: @first_name, last_name: @last_name, avatar: @avatar)
#end


url = "https://reqres.in/api/users"
print url,"\n"
response1 = RestClient.post url, {
  "name": "morpheus",
  "job": "leader"
}

data_h = JSON.parse(response1)
url = "https://reqres.in/api/users/#{@id}"
response2 = RestClient.get url
print response1.body


url = "https://reqres.in/api/users/2"
print url,"\n"
response1 = RestClient.patch url, {
  "name": "morpheus",
  "job": "zion resident"
}

data_h = JSON.parse(response1)
url = "https://reqres.in/api/users/2"
response2 = RestClient.get url
print response1.body

url = "https://reqres.in/api/users/2"
print url,"\n"
response1 = RestClient.delete url

data_h = JSON.parse(response1)
url = "https://reqres.in/api/users/2"
response2 = RestClient.get url
print response1.body



