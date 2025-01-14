import strutils, re, unidecode

proc slugify*(input: string, lowercase: bool = true, delimiter: string = "-"): string =
  ## Convert input string to a slug
  var str =  input.unidecode().replace(re"\s{2,}", " ").replace(" ", delimiter)
  if (lowercase):
    str = str.toLower()
  return str