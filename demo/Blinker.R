#Demo Blinker
#Edit initial state
Init = matrix(0,5,5)
Init[3,4] <-Init[3,3]<-Init[3,2]<- 1

# 0 - no living cell on grid
# 1 - 1 living cell on grid
image(Init,asp = 1)
result = dynam_Life(Init)

image_animate(result)

