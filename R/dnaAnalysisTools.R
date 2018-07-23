#' calculates AG content of a DNA sequence
#'
#' @param x gene (string)
#' @return decimal (proportion of AG alleles)
#' @examples
#' AG_content("accctctgtttgtctccacgtcttataacttctggctatggcgatgggtacaggtccgggtccgc")

AG_content <- function(dna_seq){
  dna_seq <- str_to_lower(dna_seq)
  sequence_length <- nchar(dna_seq)

  ( str_count(dna_seq, "a") + str_count(dna_seq, "g") ) / sequence_length
}
