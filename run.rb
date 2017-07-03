require 'json'

t = Time.now
j = [
  {
    icon: '',
    color: '#85678f',
    content: `uptime`.gsub(/.*up(.+), \d+ users.*/, '\1'),
  },
  {
    icon: '',
    color: '#5f819d',
    content: t.strftime('%Y-%m-%d'),
  },
  {
    icon: '',
    color: '#5e8d87',
    content: t.strftime('%H:%M:%S'),
  },
]

puts j.to_json
