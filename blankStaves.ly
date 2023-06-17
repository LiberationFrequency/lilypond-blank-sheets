\version "2.18.2"

#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

\header {
  title="" % blank staves
  tagline = ""  % removed lilypond footer
} 

\paper {
  ragged-last-bottom = ##f
  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
}

\score {
  {
    \repeat unfold 12 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}