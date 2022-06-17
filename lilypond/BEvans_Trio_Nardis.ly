\version "2.18.2"
\header {
  title = "Nardis"
  composer = "Bill Evans Trio"
}
upper = \relative c'' {
  \tempo 4 = 140
  \clef treble
  \key g \major
  \time 4/4
  r2. b4 \bar "||" \repeat volta 2 {
  e1 | r4 \tuplet 3/2 { dis,8 e e' } < dis gis, >4 %c8 < b~ gis~ > |
  << { \voiceOne c8 b8~ | b1 | r1 } \new Voice { \voiceTwo r8 gis8~ |\tuplet 3/2 {gis4 fisis gis} \tuplet 3/2 {g fis g} | \tuplet 3/2 {fis e fis} \tuplet 3/2 {e d d8 e8}  } >> |
  d8 b'-. r4 a g | e4. a8~ a2 |
  \acciaccatura a8 gis4 f2 e4~ | } \alternative { {e2 b'2 |}  {  e,2.\repeatTie r4|} }
  b'2. b4~ | b2 b,8-. c-. e-. g-. | b2. b4~ | b2 r2 |
  r8 < f a c e >4. < e g b d >4 < d f a c > | < f a c e >2 < e g b d > | b'2. b4~ | b2 r4 b |
}

lower = \relative c' {
  \clef bass
  \key g \major
  \time 4/4

  r1 \bar "||" \repeat volta 2 {
    r2 < g b d >4. < a c e >8 | r2 < b dis >4. < a~ dis~ >8 |
  q1 | < g c e > |
  < g b c >4 r2. | < a b c >1 |
  < gis b dis >2. < g~ b~ d~ >4 |  } \alternative { { q2 r2 | }  { r2. < b c e >4 |} }
  < g b c e > 2. < g~ a~ c~ e~ >4 | q1 | < g b c e > 2. < g~ a~ c~ e~ >4 | q1 |
  r8 c4. b4 a | c2 b2 | < g b c e > 2. < g~ a~ c~ e~ >4 | q2 r2

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
