chlength = 16
ttlength = 20
pglength = 10

chptr = [["Chapter 1", "The Very First", "page 1"], ["Chapter 2", "Two Fine Wines", "page 20"], ["Chapter 3", "Third Place", "page 33"]]

puts chptr[0][0].ljust(chlength) + chptr[0][1].ljust(ttlength) + chptr[0][2].rjust(pglength)
puts chptr[1][0].ljust(chlength) + chptr[1][1].ljust(ttlength) + chptr[1][2].rjust(pglength)
puts chptr[2][0].ljust(chlength) + chptr[2][1].ljust(ttlength) + chptr[2][2].rjust(pglength)
