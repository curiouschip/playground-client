require './lib/playground_client'

Playground::API.new.user_register(
	:name		=> 'Jason Frame',
	:location 	=> 'Glasgow UK',
	:username 	=> 'jaz303',
	:email		=> 'jason@onehackoranother.com',
	:password	=> 'test-password-123',
)