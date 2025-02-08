// Sections
#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "a4",
  body,
) = {
  // Set some config for the document
  set document(author: author, title: author)
  set text(
    font: font,
    size: 9.5pt,
    lang: "en",
    ligatures: false
  )
  set page(
    margin: (0.5in),
  )
  set par(justify: true)

  // Configure styling for specific elements
  show link: underline
  show link: set text(
    fill: rgb(accent-color),
  )
  show heading: set text(
    fill: rgb(accent-color),
  )
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: 20pt,
    )
    #pad(it.body)
  ]
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  [= #(author)]

  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(phone),
          contact-item(location),
          contact-item(email, link-type: "mailto:"),
          contact-item(github, link-type: "https://"),
          contact-item(linkedin, link-type: "https://"),
          contact-item(personal-site, link-type: "https://"),
        )
        items.filter(x => x != none).join("  |  ")
      }
    ],
  )

  body
}

#let education(
  institution: "", dates: "",
  degree: "", location: "",
) = {
  [
    #strong(institution) #h(1fr) #location \
    #emph(degree) #h(1fr) #emph((dates))
  ]
}

#let role(
  title: "", dates: "",
  company: "", location: "",
) = {
  [
    #strong(title) #h(1fr) #dates \
    #company #h(1fr) #emph(location)
  ]
}