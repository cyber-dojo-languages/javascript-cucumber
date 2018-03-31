
lambda { |stdout,stderr,status|
  output = stdout + stderr
  js_hint_pattern = /^(\d+) error(s?)/
  return :amber if js_hint_pattern.match(output)
  return :red   if /\(\d+ failed/.match(output)
  return :green if /\(\d+ passed\)/.match(output)
  return :amber
}
