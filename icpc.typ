#let icpc(
  team: none,
  icon: none,
  doc
) = {
  set page(flipped: true, columns: 3, header: context [*#team* #h(1fr) #counter(page).display() #line(length: 100%)], margin: (left: 1cm, right: 1cm, top: 1.5cm, bottom: 1cm))
  set text(size: 9pt)
  set heading(numbering: "1.")
  outline()
  doc
}

#let file(filename, description: none) = {
  heading(depth: 2, [#filename.split("/").at(1).split(".").at(0)])
  description
  line(length: 100%)
  raw(read(filename), block: true, lang: filename.split(".").at(-1))
}