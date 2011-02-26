Omnisocial.setup do |config|
  if Rails.env.production?
    config.twitter 'mITVDQwkQ4yh8l0gyzGnMg', 'RTdO3gFXCcMBxrlN3SIkFtgS72KBEo78zjq0I'
    config.facebook '2980fac40c421e48589e8e7ef54b5ffa', '4120db786075661cd3f78d320d7fec92'
  elsif Rails.env.development?
    config.twitter 'mITVDQwkQ4yh8l0gyzGnMg', 'RTdO3gFXCcMBxrlN3SIkFtgS72KBEo78zjq0I'
    config.facebook 'b17f1a732e8a1115dd097fece6caf86b', 'e7a8215119bce1ff9609efb7ef671fba'
  end
end
