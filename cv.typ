#import "library.typ": entry, section, styling, subsection

#set document(author: "Jonas Pleyer", title: "CV Jonas Pleyer")
#show: styling

#align(center)[
  = Jonas Pleyer - Curriculum Vitae\
  Stefan-Meier Str. 30, 79104 Freiburg\
  #link("https://jonas.pleyer.org", "jonas.pleyer.org") |
  #link("https://www.github.com/jonaspleyer", "github.com/jonaspleyer") |
  #link("mailto:jonas.dev@pleyer.org", "jonas.dev@pleyer.org") |
  #link("tel:+491785430064", "+49 178 5430064")
]

#section("Profile")
Software engineer and computational scientist with expertise in Rust and Python.
I build high-quality software for scientific computing and contribute actively to the Rust
open-source ecosystem.
I enjoy working in teams that emphasize functionality and reliability and use excellent tooling.

//Experience
#section("Experience")
#entry(
  [
    *Doctoral Candidate* (_University of Freiburg_)
    - Study of cellular systems via computational models
    - Developed and maintained agent-based simulation framework `cellular_raza`
    - Contributed to Open Source projects
    - Published peer-reviewed software and scientific papers and reviewed papers
  ],
  [_since 08/2021_],
)

#entry(
  [
    *Research Asistant - Tutor* (_University of Freiburg_)
    - Weekly tutorials in Physics, Mathematics and Systems Biology, exams, lectures
    // - Weekly Tutorials: Elementary Geometry, Analysis I - III, Introduction to\
    //   Systems Biology, Experimental Physics I, Theoretical Physics III, Higher Math II
    // - Prepared and graded mandatory work sheets and exams, lecture substitute
  ],
  [_since 04/2020_],
)

#entry(
  [
    *Supervisor iGEM* (_CIBBS, Freiburg_)
    - Mentored students in scientific modeling, website and science communication
  ],
  [_05/2023 - 09/2024_],
)

#entry(
  [
    *Research Assistant* (_Fraunhofer Institute ISE, Freiburg_)
    - Uncertainty estimation for heat pumps, eco-label validation and assignment
  ],
  [_02/2020 - 04/2021_],
)

#entry(
  [
    *Internship* (_SAP, Walldorf_)
    - Natural Language Processing, Data Analysis
  ],
  [_08/2017 - 10/2017_],
)

#section("Education")
#entry(
  [
    *University of Freiburg*\
    Doctoral Candidate (Computational Systems Biology)\
    // #text([Thesis: "_Agent-based Models in Cellular Systems_" (Christian Fleck)], size: 9pt)\
    MSc. Physics (Theoretical Physics & Mathematics),\
    #text([Thesis: "_Zero Values of the TOV Equation_" (Prof. Nadine Große)], size: 9pt)
  ],
  [\
    _since 08/2021\ \
    04/2020-07/2021_
  ],
)
#entry(
  [
    *Heidelberg University*\
    MSc. Physics\
    Bsc. Physics\
    #text(
      [Thesis: "_About Topological Tunneling Configurations, the Anharmonic Oscillator\
        and the Functional Renormalization Group_" (Prof. Jan Pawlowski)],
      size: 9pt,
    )
  ],
  [\
    _04/2018-04/2020\
    09/2013-03/2018_
  ],
)
#entry(
  [*Ottheinrich-Gymnasium, Wiesloch* (High School)],
  [_09/2005-06/2013_],
)

#section("Skills", note: "In descending order of skill level")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 0pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  text("Programming Languages", weight: 600), [Rust, Python, C++, C, Javascript, Bash],
  text("Development Tools", weight: 600), [Git, GitHub Actions, Linux, Make, CMake, GitLab CI/CD],
  text("Documentation & Publishing", weight: 600), [Hugo, Typst, LaTeX, Sphinx, HTML, CSS],
)
