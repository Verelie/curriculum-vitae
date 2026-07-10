#import "library.typ": entry, section, styling, subsection

#let config = yaml("/configuration/configuration.yaml")

#set document(author: config.contacts.name, title: "Lebenslauf " + config.contacts.name)
#show: styling

// Header
#align(center)[
  = #{ config.contacts.name }\
  #grid(
    columns: (1fr, auto, 1fr),
    align: (right, center, left),
    column-gutter: 0.3em,
    row-gutter: 0.6em,
    [#config.contacts.address], [|], [#config.contacts.zip #config.contacts.city],
    [+#config.contacts.phone], [|], link("mailto:" + config.contacts.email, config.contacts.email),
    [#config.contacts.dateofbirth], [|], [#config.contacts.nationality],
  )
]

// Berufserfahrung
#section("Berufserfahrung")
#{
  for job in config.jobs {
    entry(
      [
        #text(job.company, weight: 600) (#{ job.role })\
        #list(..job.description)
      ],
      [_#{ job.duration }_],
    )
  }
}

// Bildungsweg
#section("Bildungsweg")
#{
  for education in config.education {
    entry(
      [
        #if education.description != "" and education.description != none [
          #text(education.place, weight: 600) (#education.description)\
        ] else [
          #text(education.place, weight: 600)
        ]
      ],
      [_#{ education.duration }_],
    )
  }
}

// Kompetenzen
#section("Kompetenzen")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 10pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  ..for skill in config.skills {
    (text(skill.name, weight: 600), skill.items.join(", "))
  }
)

#section("Referenzen")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 10pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  ..for reference in config.references {
    (
      [#text(reference.name, weight: 600)],
      [
        #{ reference.role }, #{ reference.company }\
        #link("mailto:" + reference.email, reference.email)\
        +#reference.phone
      ],
    )
  }
)
