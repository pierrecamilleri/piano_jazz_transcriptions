\version "2.18.2"
\header {
  title = "Everything happens to me"
  composer = "Thelonious Monk"
}
harmony = \chords {
  \set minorChordModifier = \markup { "-" }
  s1 |
  c2:m7 f:7.9- | bes:7.9 c:6 | c:m7 f:7 | d:m7.5- g4:7/d g4:9-.11+/d |
  g2:7.9- f:7  | g:7 c:7.11+ | c:m7 f:7 | bes4 e:7 c:m7 f:9-.11+ |
  c2:m7 f:7.9- | bes:7 c:7.9- | c:m7 f:7 | d:m7.5- g:7.11+ |
  g:7 c:m7.5- | d:m7:5- g:7 | c:m7 f:7 | bes1 |
}
upper = \relative c'' {
  \tempo 4 = 70
  \clef treble
  \key bes \major
  \time 4/4
  r2 g4 f4 \bar "||"
  <<
  {
    \voiceOne d'8 d d ees  c4 bes8 a | c8 c c d bes4. g8 |
    bes bes bes bes a4 g8 f | aes aes aes bes g4.  d8 |
    f8 f f g \autoBeamOff ees \autoBeamOn ges a bes | c d c c a4 \acciaccatura { bes, 16 d e a } fis'4 |
    g,8 g g4 r4 \tuplet 3/2 {a8 a a} | a4 r2. |
    d4. ees8 c4. bes16 a | c4 c8 d < des bes g >2 |
    < ees bes g >4 r8 bes32 ees g bes aes8 a8~ a f32 ees c a | aes'8 c,16 f aes
    bes aes ges \autoBeamOff g8 \autoBeamOn  d des4 |
    f4.  g8 ees4 ges16 a bes c | r16 c8  c16~ c  c8  aes16 a2 |
    r2 bes,16 c ees g d'8 f,8 | \autoBeamOff bes \autoBeamOn f16 des d bes f des d bes r bes~ bes4 |
    bes'4 \tuplet 3/2 {bes8 bes bes} d8 cis4 b16 cis | bes4 bes r2  |
    r4 \tuplet 3/2 {bes'8 bes bes } b ges~ ges f16 ees | bes'4 r2 \tuplet 3/2 { r8 bes aes } |
    a4 b,16 d e a c f, des < b c > f des < b' c >8 | a 4 a8 a a4  r8 a |
    bes8 bes bes bes bes4 g16 a bes b | c2 r2 |
  }
  \new Voice
  {
    \voiceTwo r2 < ees, ges > | < d a' > < a' des > |
    ees ees | g < g, a c >4 < aes b des > |
    < aes b d >2  \autoBeamOff g8 \autoBeamOn ges a bes | c d c c bes4 r |
    bes2  r4 < c ees g >4 | bes4 < fis gis d' > < ees g d' > < ges a b > |
    s1 | s | s | s |
    s1 | s | s | s |
    < c ees >2 < fis gis > | < d f >8 < des fes > < c ees >4 r2 |
    < aes bes >4 \tuplet 3/2 { < ees'' aes >8 q q } < d aes' > r8 r4 | bes4  s2. |
    s1 | s |
    < d, g >4  < d ges > < d f > e | ees2 r2 |
  }
>>
}

lower = \relative c {
  \clef bass
  \key bes \major
  \time 4/4

  r1 \bar "||"
  < c ees bes' >2 < f a c > | < bes, f' > < c e >8 g c,4 |
  < c' bes' >2 < f, a' > | < d' f c' > < d, d' > |  \break
  < g f' > < c, ees' > | g''8 fis  < f g, >4 < e c, > r |
  < c, ees' >2 \set tieWaitForNote = ##t f8~ ees'~ < f, ees' >4 \set tieWaitForNote = ##f | < bes a' >4 < e, d' > < c bes' > < f ees' > | \break
  < c' bes' >4 < bes' ees g > f, < ees'' ges a > | < bes, a' > < d' f a > c,, < g'' bes e > |
  < g bes ees > q f, < a' ees' f > | d,, < c'' f > d,8 c' b g,~ | \break
  < g f' >4 < b' d f > c,, < g'' c ees > | g fis' f e |
  < c, ees' > < bes' ees g > f, < a' ees' f> | \autoBeamOff bes,,8 \autoBeamOn f'''16 des d bes f des d bes r bes~ bes4 |  \break
  f2 bes, | ees2 ees4 < bes'' ees g> |
  f,4 < aes' ees'> < bes, aes'>  < d' aes' >  | ees,,4 < bes'' ees g > bes,, <bes'' ees g> |
  < e,, d' >4 < g' d' > < a, g' > cis' | d,,4 < cis'' e >8 < c ees > < b d >4 d,, |
  g4 ges' f e | < f, ees' >4 < bes' ees g > f,2 |

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
