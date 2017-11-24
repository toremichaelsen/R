\name{distance}
\alias{dBdist}
\title{Distance to a sound wave}
\usage{
distance(L2,L1,r1)
}
\description{
The function distance returns a data frame with dB values specified by the user and corresponding values for distance.The function calculates a distance to a sound wave using a reference dB value measured at a known reference distance. Both reference values must be specified. Now, any new dB values can be added and the function returns their distances together with the corresponding user specified dB value. The specified reference distance value can be metric or any other system.
}
\arguments{
distance Calls the function

L2 A measured (negative) dB value with unknown distance from a recorder


L1 A measured (negative) dB value made at a known distance from a recorder (reference)


r1 The distance from recording device where L1 was measured (reference)
}
\value{
dB Decibel (dB) specified by the user (L2)


distance The distance (r2) corresponding to L2, given the reference values of L1 and r1
}
\note{
This package could be used to obtain distances to animal sounds such as birds calls, ultrasounds from bats and various high and low frequency sounds from insects. In a perfect world (which is the theory behind this equation), there are no reflective surfaces and the sound wave can travel in a sphere. When studying animal sounds, several issues will affect the behaviour of sound. This includes echo from nearby objects (which will boost dB values) where the animal is situated at the time of the recording. Temperatures and how well the surroundings absorb/block the sound are also issues. If the deployment of the recording device is close to objects, this too could significantly affect the results, and in particularly if the microphone is omnidirectional (echo from nearby trees, the ground, leafes and so on). The direction of a flying bat or the direction of the head of a singing bird relative to a microphone will affect dB, thus one would need to make assumptions about the behaviour of the animal when interpreting the results. Naturally, using different types of recorders for obtaining reference and test dB values, will not work unless a correction is made. Therefore, in the real world, with a real field experiment, the values returned by this function must be considered as being approximate and much care must be taken when using the data in research.
}
\examples{
#Calculate a single value
L2<--35 #a new dB value from a sound wave at an unknown distance
L1<--27 #reference dB value
r1<- 12 #reference distance
single.distance<-distance(L2,L1,r1)
single.distance
#or
single.distance<-distance(-35,-27,12)
single.distance

#Calculate multipe values simoultaniously
L2<-c(-35,-47,-21,-33)
distances<-distance(L2,L1,r1)
distances

#Data from a dataset with several columns (neg.db holding the dB values)
#distances<-distance(dataset$neg.db,-27,12)
#distances
}

