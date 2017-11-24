#' Calculates distance to a sound
#' Uses a reference dB value at a reference distance to calculate the distance
#' @export
distance <- function(L2, L1,r1) {
  distance<-r1*10^((L1-L2)/20)
  dB<-L2
  return(data.frame(dB=dB,distance=distance))
}
