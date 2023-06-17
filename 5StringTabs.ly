\version "2.18.2"

#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

\header { 
  title="" % five string tabs
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
  (set! Staves 10)
  (set! Staves 16)
  )

emptymusic = {
  \repeat unfold \Staves { s1\break }
}

\new Score \with {
  defaultBarType = #""
  \remove Bar_number_engraver
}
<<
  \new TabStaff \with {
    \clef moderntab 
    stringTunings = #bass-five-string-tuning 
  } 
  \new TabVoice { \emptymusic }
>>

