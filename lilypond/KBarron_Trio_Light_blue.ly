\version "2.18.2"
\header {
  title = "Light Blue"
  composer = "Kenny Barron Trio"
}
upper = \relative c'' {
  \tempo 4 = 140
  \clef treble
  \key c \major
  \time 4/4
  r2. r8 gis \bar "||"
  a2 r4  e'8 c | e cis a e gis e c' bes |
  a4 e8 c g' f d c | d aes,~ aes4 r8 g e' d |
  c4 g r a8 b | c4 e8 c b' gis a b |
  c d e cis d c a g | g'4 < b, cis> r c8 bes |
  a4 e'8 c d c a f | \tuplet 3/2 { a4 e'8 } \tuplet 3/2 { c a f }
    \tuplet 3/2 { r8 a ees' } \tuplet 3/2 { ces aes f } |
  c' a~ a4 r e'8 c | d c a f aes c, g' f |
  e4 < c b' >2.~ | < c b' >4 a'8 g  e c a g |
  fis4 r8 c' b'8 bes a4 | b,8 d f aes g4. aes8 |

}

lower = \relative c, {
  \clef bass
  \key c \major
  \time 4/4

  r1 \bar "||"
  f4 r < e' a > r | g,-. b'( f-.) ges,( |
  f) r < e' a > r8 d |  aes4 r < des, aes' > r |
  < c g' > r < c' e > r | a r < c e > r |
  d, r < f' c' > r | < f b > r < e bes' > ges,--( |
  f)  r < e' a > r | g,-. b'( f-.) ges,( |
  f) r < e' a > r  | f, r < des' aes > r |
  c, r < c' e > r | a r < c e > r |
  d, r < f' c' > r | < f b > r < e bes' > ges,--( |

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
