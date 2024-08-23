\version "2.18.2"
\include "swing.ly"
\header {
  title = "Cleopatra's Dream - solo"
  composer = "Bud Powell"
  tagline = \markup {
    \with-url #"https://github.com/pierrecamilleri/piano_jazz_transcriptions" {
      "Score transcribed by Pierre Camilleri"
    }
  }
}

"Solo1" = \relative c' {
  \tempo 4 = 230
  \clef treble
  \key ces \major
  \time 4/4

   r4 r8 ees d ees d ees |

   ees'2 ees,8 fes ees' d | des bes g e ees des ces bes |
   ees bes ces ees bes' aes r4 | r8 ees aes des~ des4 r8 ces |

   des des ces4 bes f | \tuplet 3/2 {aes8 bes aes} g bes des fes ees des |
   ces aes bes g aes4 r4 | r4 ees8 aes ces ees des ces |

   bes des ees aes ees' des r4 | r fes8 bes, g e des ces |
   ees2 ees,8 aes ces ees | bes ces des bes ces aes \acciaccatura { d,16 } ees8 ces |

   bes' aes g fes ees fes g bes | des4 fes8 ees des ces bes g |
   aes4 ees \tuplet 3/2 { aes8 bes aes } ges8 ees | aes4 r ees8 aes ces4 |

   ees8 ees des4 ees des | ees fes8 des bes fes ees des |
   ees bes ces ees bes' aes r4 | r8 ees aes ees' des ces bes aes |

   g4 r g8 bes des fes | ges g c ces bes fes des ces |
   ees bes ces ees bes' a aes ges | fes8 ees des ces bes aes g r |

   ees' r r2 ees,8 fes | g4 ees'8 d des ces g ees |
   aes ees aes bes ces4 r4 | r4 ees,8 aes ces ees des ces |

   bes aes g ees fes ees r4 | r4 ees8 f g bes ees des |
   bes ces r4 r8 bes ces bes' | aes1




}


\score {
  \new PianoStaff <<
    \new Staff = "upper"  { \"Solo1"}
  >>
  \layout { }
  \midi { }
}

\score {
  \applySwing 8 { \"Solo1"}
  \midi { }
}

