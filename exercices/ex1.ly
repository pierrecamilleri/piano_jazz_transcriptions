\version "2.18.2"
\header {
  title = "Exercises from Take the \"A\" train"
  composer = "Oscar Peterson"
  piece = "Swing"
}

phrase_un = { 
  \key c \major
  b8 a b a e c a4 |                                                                                                                 
  d1
}


upper = \relative c''' {
  \tempo 4 = 160
  \clef treble
  \time 4/4

  \phrase_un
  \transpose c f' { \phrase_un }
  \transpose c bes { \phrase_un }
  \transpose c ees { \phrase_un }
  \transpose c aes { \phrase_un }
  \transpose c des { \phrase_un }
  \transpose c ges { \phrase_un }
  \transpose c b { \phrase_un }
  \transpose c e { \phrase_un }
  \transpose c a { \phrase_un }
  \transpose c d { \phrase_un }
  \transpose c g { \phrase_un }
}


\score {
    \new Staff {
      \upper
    }
  \layout { }
  \midi { }
}
