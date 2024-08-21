\version "2.18.2"
\header {
  title = "Light Blue"
  composer = "Kenny Barron Trio"
  tagline = \markup {
    \with-url #"https://github.com/pierrecamilleri/piano_jazz_transcriptions" {
      "Score transcribed by Pierre Camilleri"
    }
  }
}

RHThemeA = \relative c' {
  \tempo 2 = 70
  \clef treble
  \key c \major
  \time 4/4

  % Theme repeated 4 times with variations

  \repeat volta 2 {
    \partial 4 ees4 | e4 b' a e |
    b4 bes2 r8 ees8 | e4 b' a e |
    < a, g > 4 < aes f >2 r4 |
    \acciaccatura { bes16 aes ges } g2 < c b' >2~ |
    < c b' >4 a'8 g e c a g |
    fis e' c a fis f < b~ cis~ >4 |
    < b~ cis~ >4 r2 ees4 |

    e4 b' \tuplet 3/2 {r4 a e} |
    b4 bes2 ees4  |
    e4 b' a e  |
    a,4  aes2 r4 |
    \acciaccatura { bes16 aes ges } g2 < c b' >2~ |
    < c b' >4 a'8 g e c a g |
    fis e' c a fis f < b~ cis~ >4 |

  }

  \alternative {
    { < b~ cis~ >4 r2 ees4 | }
    { < b~ cis~ >4 r2 r8 gis' \bar "|."}
  }
}

LHThemeA = \relative c, {
  \clef bass
  \key c \major
  \time 4/4

  % Theme repeated 4 times with variations
  \repeat volta 2 {
    \partial 4 r4 | < f c' a' >1 |
    < g f' >4 < c, e'>2 r4 |
    f4 c' a'~ 4  |
    < f, e' >4 < bes, d' >2 r4  | \break

    c4 g' e'2 |
    a,8 <e' c'>8~ < e c'>2. |
    r8 < d, a' fis' >4. r2  |
    r4 g4-- g2-- | \break

    < f c' a' >1|
    < f dis' >4 < ges e'>2. |
    < f c' a' >1 |
    < ges e' >4 < f dis' >2 r4  | \break

    c4 g' e'4. e8 |
    a,8 e' g2 r4 |
     < d, a' >2 r2  |
 }
 \alternative {
   { r4 g4-- g2-- | }
   { \tuplet 3/2 {r4 < cis, gis >4 q4} q2-- | }
 }
 \break

}

RHImpro = \relative c'' {

  % Improvisation second part
  \mark \markup { \small { Solo second part (01:53) } }

  a4 r4 r4  \tuplet 2/2 { e'8-> c-. } | e-> cis a e gis e-. c'-- bes-- |
  a4 e8 c g' f d c | d aes~ aes4 r8 g g' f |
  e4 g, r \tuplet 2/2 {a8-- b--} | c4 e8 c b' gis a b |
  c d e cis d c a g | g'4 < b, cis> r \tuplet 2/2 { c8-- bes-- } |
  a4 e'8 c d c a f | \tuplet 3/2 { a4 e'8 } \tuplet 3/2 { c a f }
    \tuplet 3/2 { r8 aes ees' } \tuplet 3/2 { bes aes e } |
  c' a~ a4 r e'8 c | d c a f aes c, g' f |
  e4 < c b' >2.~ | < c b' >4 \tuplet 2/2 {a'8 g}  \tuplet 4/4 {e c a g} |
  fis4 r8 c' b'8 bes a4 | b,8 d f aes g4. gis8 |
  a gis a gis \tuplet 3/2 {a4 e'8} \tuplet 3/2 { c8 a f } |
  \tuplet 3/2 { b4 g'8 } \tuplet 3/2 { des8 b f } \tuplet 3/2 { aes8 f ees' } \tuplet 3/2 {r8. bes16 aes e } |
  d'4. c8 a e c a | ees' a, d des \tuplet 3/2 { c4 aes ges } |
  g4  r r \tuplet 2/2 { a8 b8 } | c4 e8 c b' gis a b |
  c d ees e \tuplet 3/2 { r4 < b b' > < a a' > } | < c c' > r r < des des' > |
  < d d' > c'8 a  \tuplet 3/2 { e4 c b~ } | b8 f'4 \acciaccatura { des16 c b } bes8~ bes4. gis8 |
  a8 e' c a d c a e | c' gis e c bes4 aes8 ges |

  g4 a8 b c4 d8 ees | e4 b'8 gis \tuplet 3/2 { a4 e'8 } \tuplet 3/2 { c8 a e } |
  b'8 e, d' b c a e c | g' < b, cis >~ q4 r r8 gis' |

  a gis a gis a f c b | b4 < b gis' >8 < bes g'>~ q4. gis'8 |
  a gis a gis a e c a | e'4  c16 b bes a  gis4. fis8|

  g2. g8 gis | a b c d e g b d |
  c e, gis b  a e c b | g' < b, cis >~ q4 r4 r8 aes' |

  a4 <e e'> d'8 c a f | c4. b8~ b2 |
  r8 ees8  e b' a e c a | e'4  c16 b bes a gis4. fis8 |

  g2 \tuplet 3/2 { r4 e' f } |
  \tuplet 3/2 { gis a b } \tuplet 3/2 {c e, < e c' e>}~ |
  \tuplet 3/2 { q4 < b' d > < a c > } \tuplet 3/2 { < e b' > a < ees a des > }~ |

  q4 a8 es < d fis c' >4. ees8 | e4 b' a c, | b4. bes8~ bes2 |
  r8 ees8  e b' a e c a | e'4  c16 b bes a gis4. fis8 |

  g2 r4 \tuplet 2/2 { a8 b } | c e g c, b' gis a b |
  c4 b8 d c a e c | g' <b, cis>~ q4 <bes e>4. aes'8 |

  a8 e' c d a f c bes | b d f aes e c aes \parenthesize e |
  a'4 e8 c8 g' f \acciaccatura { e16 f } e8 d | c bes a g aes f g f |

  e4 < c' b' >2.~ | q4 a'8 g e d a g |
  fis e' c a fis f d' < b~ cis~ >8 | < b~ cis~ >2 r4 ees4

  e4 b' a e |
  b4 \autoBeamOff bes2 r8 ees8 \autoBeamOn |
  e4 b' a e |
  < a, g > 4 < aes f >2 r4 |
  \acciaccatura { bes16 aes ges } g2 < c b' >2~ |
  < c b' >4 a'8 g e c a g |
  fis e' c a fis f < b~ cis~ >4 |
  < b~ cis~ >4 r2 ees4 |

  e4 b' \tuplet 3/2 {r4 a e} |
  b4 bes2 ees4  |
  e4 b' a e  |
  a,4  aes2 r4 |
  \acciaccatura { bes16 aes ges } g2 < c b' >2~ |
  < c b' >4 a'8 g e c a g |
  fis e' c a fis f < b~ cis~ >4 |
   < b~ cis~ >4 r2. \bar "|."
}


   % Improvisation second part

LHImpro = \relative c, {

  f4 r < e' a > r |
  g,-. b'( f-.) ges,( |
  f) r < e' a > r8 d |
  aes4 r < des, aes' > r |  \break

  < c g' > r < c' e > r |
  a r < c e > r |
  d, r < f' c' > r |
  < f b > r < e bes' > ges,--( |  \break

  f)  r < e' a > r |
  g,-. b'( f-.) ges,( |
  f) r < e' a > r  |
  f, r < des' aes > r | \break

  c, r < c' e > r |
  a r < c e > r |
  d, r < fis' c' > r8 aes, |
  g b d f e4 ges,--( | \break

  f4) r < e' a > r |
  g,-. b'( f-.) ges,( |
  f) r < e' a > r4 |
  < f, c' > r  < aes des >4  < des, aes' >  | \break

  < c g'> r < c' e > r | a r < e' c' > r |
  < d c' >  r < fis c' e > r | < des c' > r < f b ees > r | \break

  < c a' > r < bes' e g > r | r1 |
  r  | r | \break

  < c, g' >4 r < c' e > r | a r < e' c' > r |
  < fis c' > r q r | g, f' e ges, | \break

  r1 | r1 |
  r1 | r1 | \break

  r1 | r1 |
  r1 | r1 | \break

  r1 | r1 |
  r1 | r1 | \break

  r1 | r1 |
  r1 | r1 | \break

  r1 | r1 |
  r1 | r1 | \break

  r1 | r1 |
  r1 | r1 | \break

  r1 | r1 |
  r1 | r1 | \break

  r1 | r1 |
  r1 | r1 | \break

  < f c' a' >1 |
  < g f' >4 < c, e'>2 r4 |
  f4 c' a'~ 4  |
  < f, e' >4 < bes, d' >2 r4  | \break

  c4 g' e'2 |
  a,8 <e' c'>8~ < e c'>2. |
  r8 < d, a' fis' >4. r2  |
  r4 g4-- g2-- | \break

  < f c' a' >1|
  < f dis' >4 < ges e'>2. |
  < f c' a' >1 |
  < ges e' >4 < f dis' >2 r4  | \break

  c4 g' e'4. e8 |
  a,8 e' g2 r4 |
   < d, a' >2 r2  |
  \tuplet 3/2 {r4 < cis, gis >4 q4} q2-- |
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" { \RHThemeA \RHImpro }
    \new Staff = "lower" { \LHThemeA \LHImpro }
  >>
  \layout { }
}
