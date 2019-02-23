\version "2.18.2"
\header {
  title = "Exercises from Take the \"A\" train"
  composer = "Oscar Peterson"
}

phrase_un = { 
  \key c \major
  d1
}

  
musicnotes = { b'8 a' b' a' e' c' a4 }
musicnotesdeux = {r2. \acciaccatura dis'8 e'8 cis' | 
d' e' f' g' \acciaccatura dis' < e' g' > < d' g' > r4 } 

music = <<
  \context ChordNames \with { alignAboveContext = "mus" }
  { c1*0 $(skip-of-length musicnotes) }
  \context Staff = "mus" \musicnotes
>>

musicdeux = <<
  \context ChordNames \with { alignAboveContext = "musdeux" }
  { c1*0 $(skip-of-length musicnotesdeux) }
  \context Staff = "musdeux" \musicnotesdeux
>>


\new Staff = "mus" {
  \transpose c c   { \music }
  \transpose c f   { \music }
  \transpose c bes, { \music }
  \transpose c ees { \music }
  \transpose c aes, { \music }
  \transpose c des { \music }
  \transpose c ges { \music }
  \transpose c b,   { \music }
  \transpose c e   { \music }
  \transpose c a,   { \music }
  \transpose c d   { \music }
  \transpose c g   { \music }
}

\new Staff = "musdeux" {
  \transpose c c   { \musicdeux }
  \transpose c f   { \musicdeux }
  \transpose c bes, { \musicdeux }
  \transpose c ees { \musicdeux }
  \transpose c aes, { \musicdeux }
  \transpose c des { \musicdeux }
  \transpose c ges { \musicdeux }
  \transpose c b,   { \musicdeux }
  \transpose c e   { \musicdeux }
  \transpose c a,   { \musicdeux }
  \transpose c d   { \musicdeux }
  \transpose c g   { \musicdeux }
}
