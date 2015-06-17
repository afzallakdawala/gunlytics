class Gunlytics::Auth
	def self.test
		"testing askljdflasjdflkasjlkfjsaß"
	end
end

#GA Authentication
ga_client_id = "79004200365-im8ha2tnhhq01j2qr0d4i7dodhctqaua.apps.googleusercontent.com"
ga_client_secret = "CB4Pdx7nBSZevbAlTOD9ZGaq"
ga_scope = "https://www.googleapis.com/auth/analytics"
ga_refresh_token = "1/R96LIdJ7mepE1WVdhi9WtPxZI9JTh2FmIzYcrTaGRnQ"

get_access_token =  Nestful.post "https://accounts.google.com/o/oauth2/token?method=POST&grant_type=refresh_token&refresh_token=#{ga_refresh_token}&client_id=#{ga_client_id}&client_secret=#{ga_client_secret}"
access_token = JSON.parse(get_access_token.to_json)['access_token']    


uri = URI('https://accounts.google.com/o/oauth2/token')
res = Net::HTTP.post_form(uri, 'method' => "POST", "grant_type"=>"refresh_token","refresh_token"=>ga_refresh_token, "client_id"=>ga_client_id, "client_secret"=> ga_client_secret)
puts res.body

