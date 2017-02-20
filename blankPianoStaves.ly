\version "2.18.2"

#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

\header { 
  title="" % Piano Staves
  tagline = ""  % removed lilypond footer
}
\paper {
  #(set-default-paper-size "a4")
  ragged-last-bottom = ##f
  line-width = 7.5\in
%  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
}

\layout {
  indent = #0  
  \context { 
  }
}

emptymusic = {
  \repeat unfold 8 { s1\break }
}

\new Score \with {
  \override TimeSignature #'transparent = ##t
  defaultBarType = #""
  \remove Bar_number_engraver
}
<<
  \new PianoStaff <<
    \new Staff \new Voice { \clef "treble" \emptymusic }
    \new Staff \new Voice { \clef "bass" \emptymusic }
  >>
>>

