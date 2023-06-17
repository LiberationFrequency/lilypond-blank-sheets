\version "2.18.2"

#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

\header { 
  title="" % Piano Staves
  tagline = ""  % removed lilypond footer
}
\paper {
  ragged-last-bottom = ##f
%  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
}

\layout {
  indent = #0  
  \context { 
  }
}

#(define Staves 0)
#(if (string-suffix? "landscape" (ly:get-option 'paper-size))
  (set! Staves 5)
  (set! Staves 8)
  )

emptymusic = {
  \repeat unfold \Staves { s1\break }
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

