\version "2.18.2"
\header {
  title = "But not for me"
  composer = "Chet Baker"
  piece = "Swing"
}
harmony = \chords {
  \set minorChordModifier = \markup { "-" }
  s1 | 
  c1:6 | s1 | d:5-.7 | s | d:m7 | g:7 | c:6 |  d2:m7 g:7 |
  c1:6 | s1 | d:5-.7 | s | d:m7 | g:7 | c:6 |  d2:m7 g:7 |
  f1:7+| s1 | s     | s | d:5-.7| s   | d:m7|  g2:7 g:7.9- |
  c1:6 | s1 | d:5-.7 | s | d:m7 | g:7 | c:6 |  d2:m7 g:7 |

  c1:6 | s1 | d:5-.7 | s | d:m7 | g:7 | c:6 |  d2:m7 g:7 |
  c1:6 | s1 | d:5-.7 | s | d:m7 | g:7 | c:6 |  d2:m7 g:7 |
  f1:7+| s1 | s     | s | d:5-.7| s   | d:m7|  g2:7 g:7.9- |
}

upper = \relative c'' {
  \tempo 4 = 140
  \clef treble
  \key c \major
  \time 4/4

  r2 g8 c e f \bar "||"
  d
  \mark \markup { \italic { Theme } }
  c a4 c2   | r2. a8 c | d c aes4 c2 | r2. a8 c |
  d c a4 c2   | r4 r8 dis e4 c | g1 | r8 a( c) d( ees) d( ees) d( |
  ees4) a,8 c-3 d ees d c | bes g a g r a c dis | e1 | b'8 a b a e c a4 |
  d2 dis8 e g f | e4 \tuplet 3/2 {g,16_1 gis_2 a_1} c d dis8 c d c | r16 d c  g f8 c \tuplet 3/2 { dis8 e g~ } g4 | r2 gis4-> a8. f16 |
  gis4-> a8. g16 gis4-> a8. g16 | gis4-> a8. g16 gis8 a r a | bes4 c8 bes a c, cis d | r2 r8 e \tuplet 3/2 { a c-4 e-1 } |
  gis4 b8 gis e4 e | e8 dis e gis e4 \tuplet 3/2 { fis8 g bes } |
    g4 ees8 d ees g ees4 | \tuplet 3/2 { b8 ees g } \tuplet 3/2 { a, cis f } g, a c dis |
  e1 | d8 d c4 b a | \acciaccatura g8 aes2 aes8 aes r g | aes c  e e, r4 \acciaccatura dis'8 e8 cis |
  d e-3 f g \acciaccatura dis < e g > < d g > r4 | r8 a\( \tuplet 3/2 { c16 d c } a8 b g' g,\) a-1\( |
    c-2 d \tuplet 3/2 { c16 d c } a8 c2\) | r4 \tuplet 3/2 { c8 c c } \tuplet 3/2 { c c c } \tuplet 3/2 { c c c } |
  \mark \markup { \italic { Solo 2 } }
  \acciaccatura fis8 < g c >4 < f a >8 c < e g >4 r |  \acciaccatura fis8 < g c >8 c, < f a > < e g > r c < gis' c > q~ |
    q4 < e-2 c'-5 >16 gis e c q4 r | r2 dis'8 e b d |
  \tuplet 3/2 { c16 d c } a8-2 f-1 d-3 g-5 a, c e-4 | \tuplet 3/2 { d16 e d } a8 \tuplet 3/2 { c16 d c } a8 b g' \tuplet 3/2 {g, a c} |
    \tuplet 3/2 { d8 ees c } d4 \tuplet 3/2 { d8-2 ees c } d8 c | \tuplet 3/2 { d8 ees c } d8 c \tuplet 3/2 { d8 ees c } d8 c |
  \tuplet 3/2 { d8 ees c } d8 c \tuplet 3/2 { d8 ees c } d8 c | a'4 \tuplet 3/2 { < a d,>8 ees c } q c a g |
    e'1 | r2 a8\( c d ees~ |
  ees4 d8-. c-. aes-. f-. ees-. c-.\) | \acciaccatura dis8 e g dis g, d' g, b d |
     \tuplet 3/2 { c16 d c } g8-1 < f c' > c < dis g >16 e bes8~ bes r | r2 d16 b c d e f g a |
  bes gis a c a e c8 c4 r | r2 d16 b c d e f g a |
    bes gis a c a f d c g' e f g a c d f | gis a e g f c a f d'4 r |
  dis16 e8. r8 d32 c b a  gis16 e g e fis16 < d d'>8. | r2 \tuplet 3/2 { ais''16 a gis } f16 e dis d g e |
    f16 a, c e d a c a b < g g' >8. q4 | ees16 g ees c d f d b < c e >8 < a d > r4 \bar "||"


}

\score {

  \new PianoStaff <<
    \harmony
    \new Staff = "upper" \upper
  >>
  \layout { }
  \midi { }
}
