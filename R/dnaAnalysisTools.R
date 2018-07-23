#' calculates AT content of a DNA sequence
#'
#' @param x gene (string)
#' @return decimal (proportion of A or T alleles)
#' @examples
#' AT_content("accctctgtttgtctccacgtcttataacttctggctatggcgatgggtacaggtccgggtccgc")

AT_content <- function(dna_seq){
  dna_seq <- str_to_lower(dna_seq)
  sequence_length <- nchar(dna_seq)

  ( str_count(dna_seq, "a") + str_count(dna_seq, "t") ) / sequence_length
}
