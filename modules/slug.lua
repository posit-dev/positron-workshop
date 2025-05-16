function slug()
  local slug, ext = pandoc.path.split_extension(pandoc.path.filename(quarto.doc.input_file))
  return pandoc.Str(slug)
end
