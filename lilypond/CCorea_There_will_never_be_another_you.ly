
\version "2.18.2"
\header {
  title = "There will never be another you - solo"
  composer = "Chick Corea"
  tagline = \markup {
    \with-url #"https://github.com/pierrecamilleri/piano_jazz_transcriptions" {
      "Score transcribed by Pierre Camilleri"
    }
  }
}

"Solo1" = \relative c' {
  %\tempo 2 = 70
  \clef treble
  \key ees \major
  \time 4/4

  r8  bes8 b ces d e fis gis |

  bes b cis d g bes, c f | ees bes g bes, \tuplet 3/2 {ees4 f g} |
  f4. f8~ f4 r | r1 |

  r4 r8 ees d c d ees | f g bes b c ees c des~ |
  des4 f,8 f' c ees bes aes c e, g c fis, g aes a | bes4 r2. |

  r1 | r2 bes8 f f ees |
  f4 ees8 f r ees r d' r d r c r bes r a | g4. f8 e4 f8 aes |

  r4 r8 g, aes bes b c d e f aes b d f d | ees g bes, g f ees f g |
  d f ees bes f g bes b | c4. d8 ees e f aes g ges f g aes b d ees |

  f ees f ees~ ees2 | r1 |
  r4 r8 des8 ees4 des8 c~ | c des c2 bes8 ees~ |

  ees1 | r2 r8 b ees g |
  d f ees g, c d ees c g bes b d des c b a  | bes ees, r8 ees bes'4 aes |

  g bes, g' f | ees b bes aes8 g~ |
  g1

}


\score {
  \new PianoStaff <<
    \new Staff = "upper" {\"Solo1"}
  >>
  \layout { }
  \midi { }
}

