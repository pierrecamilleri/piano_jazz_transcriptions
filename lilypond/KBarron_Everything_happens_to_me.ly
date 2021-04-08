\version "2.18.2"
\header {
  title = "Everything happens to me"
  composer = "Kenny Barron"
  piece = "Swing"
}
harmony = \chords {
  \set minorChordModifier = \markup { "-" }
  c2:m7 f4:7 ees:7.11+ | d2:m7 des:dim | c2:m7 f4:7 ees:7.11+ | d2:m7.5- g:7.11+ |
  g:7 ees:m7 | d:m7 des:dim | c:m7 f4:7 ees:7 | d2:m7 des:dim | 
}

upper = \relative c {
  \clef treble
  \key bes \major
  \time 4/4

  \mark \markup { \italic { Comping } }
  < ees g bes d >4 < g' bes ees f> < ees, g a c> <  c'  des f a > | 
  < f, a c f > \tuplet 3/2 { < f' a c >8 < c f a >8. < a c f > 16 } \tuplet 3/2 { r8 < g bes des e >4 } < des' e a >8 g | 
  < d ees g bes >4 \tuplet 3/2 { <g, bes es >4 bes'16 c } < ees, g a >4 < g, c des > | 
  <g aes c > \tuplet 3/2 { < aes' c d >8 < f aes c > < c f aes > } < f, b cis >8 d' < b f' g >4 |
}

lower = \relative c {
  \clef bass
  \key bes \major
  \time 4/4

  c2 f,4 ees | d2 des'4 g | c,,2 f4 ees | d2 g |
  g ees | d r | c f4 ees | d \tuplet 3/2 { f'8 c a } \tuplet 3/2 { cis, e g } bes4 |
}

\score {
  \new PianoStaff <<
    \harmony
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
