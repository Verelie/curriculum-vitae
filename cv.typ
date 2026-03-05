#import "library.typ": entry, section, styling, subsection

#let config = yaml("configuration.yaml")

#set document(author: config.contacts.name, title: "Lebenslauf" + config.contacts.name)
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

// Experience
#section("Experience")
#{
  for place in config.jobs {
    entry(
      [
        *#{ place.company.name }*\
        #list(..place.description)
      ],
      [_#{ place.duration }_],
    )
  }
}

// Education
#section("Education")
#{
  for education in config.education {
    entry(
      [
        #if 1 < 2 {}*#{ education.place.name }*\
        #list(..education.description)
      ],
      [_#{ education.duration }_],
    )
  }
}

// Skills
#section("Skills")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 0pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  ..for skill in config.skills {
    (text(skill.name, weight: 600), skill.items.join(", "))
  }
)
