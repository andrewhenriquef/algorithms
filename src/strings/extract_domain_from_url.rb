# (?:https?:\/\/(?:www\.)?|www\.) => matches the protocol and www. if present
# ?([^\.]+) => matches the domain name, starting after from the pattern above until
# the first dot is encountered
REGEX_TO_EXTRACT_DOMAIN = /(?:https?:\/\/(?:www\.)?|www\.)?([^\.]+)/

def domain_name(url)
  url_pattern_match = url.match(REGEX_TO_EXTRACT_DOMAIN)
  _protocol, domain = url_pattern_match.to_a

  domain
end
