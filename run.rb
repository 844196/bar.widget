require 'json'

t = Time.now
h = {
  date: t.strftime('%Y-%m-%d'),
  time: t.strftime('%H:%M:%S'),
  uptime: `uptime`.gsub(/.*up(.+), \d users.*/, '\1'),
}

puts h.to_json
