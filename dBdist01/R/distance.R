#' Calculates distance to a sound
#' Uses a reference dB value at a reference distance
#' @export
distance <- function(L2, L1,r1) {
  if( any(L1 > 0 | L2 > 0) ) stop('L1 and L2 must be negative')
  if( any(L1 == 0 | L2 == 0) ) stop('L1 and L2 must be negative')
  if( any(r1 == 0) ) stop('r1 must be greater than zero')
  if( any(r1 < 0) ) stop('r1 must be greater than zero')
  distance<-r1*10^((L1-L2)/20)
  dB<-L2
  return(data.frame(dB=dB,distance=distance))
}
