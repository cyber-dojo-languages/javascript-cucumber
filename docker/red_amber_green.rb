
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :amber if /^\d+ error/.match(output)
  return :amber if /\(\d+ undefined/.match(output)
  return :red   if /\(\d+ failed/.match(output)
  return :green if /\(\d+ passed\)/.match(output)
  return :amber
}
