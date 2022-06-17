\version "2.18.2"
\header {
  title = "Rythmic exercise"
}
upperA = \relative c' {
  \tempo 4 = 140
  \clef treble
  \key c \major
  \time 4/4

  c8 d r e f r g a | r  b c r d e r f | g  r a b r c b r | a \mark "etc."

}

lowerA = \relative c, {
  \clef bass
  \key c \major
  \time 4/4

  c4. g'8~ g4 g,4 |
  c4. g'8~ g4 g,4 |
  c4. g'8~ g4 g,4 |
  c4. g'8~ g4 g,4 |
}

\score {
  \new PianoStaff <<
    \new Staff = "upperA" \upperA
    \new Staff = "lowerA" \lowerA
  >>
  \layout { }
  \midi { }
}
\markup{Start slowly and increase the tempo.}
\markup{Then improvise in C major, and on the changes of "On Green Dolphin Street"}

upperB = \relative c' {
  \tempo 4 = 140
  \clef treble
  \key c \major
  \time 4/4

  c8 d e f r g a  b  | c r d e f g r a | b c d e r f g a | b \mark "etc"
}

lowerB = \relative c, {
  \clef bass
  \key c \major
  \time 4/4

  c4. g'8~ g4 g,4 |
  c4. g'8~ g4 g,4 |
  c4. g'8~ g4 g,4 |
  c4. g'8~ g4 g,4 |
}

\score {
  \new PianoStaff <<
    \new Staff = "upperB" \upperB
    \new Staff = "lowerB" \lowerB
  >>
  \layout { }
  \midi { }
}
\markup{Same thing}
\markup{You can then work on variations, including triplets, other bass lines,
etc.}
