#import "library.typ": entry, section, styling, subsection

#let config = yaml("configuration.yaml")

#set document(author: config.contacts.name, title: "Lebenslauf" + config.contacts.name)
#show: styling

#align(center)[
  = #{ config.contacts.name } - Curriculum Vitae\
  #{ config.contacts.address }, #{ config.contacts.zip } #{ config.contacts.city }\
  #link("mailto:" + config.contacts.email, { config.contacts.email }) |
  #link("tel:+" + config.contacts.phone, { config.contacts.phone })
]

//Experience
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

//Education
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
