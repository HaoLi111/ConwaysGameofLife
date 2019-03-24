#dynam_Life
dynam_Life = function(Init,n = 10){
  nr = nrow(Init)
  nc = ncol(Init)
  re = list()
  flow = Init
  re[[1]] = flow
  for(i in 2:n){
    x11 = flow[1:(nr-2),1:(nc-2)]
    x12 = flow[1:(nr-2),2:(nc-1)]
    x13 = flow[1:(nr-2),3:nc]
    x21 = flow[2:(nr-1),1:(nc-2)]
    x22 = flow[2:(nr-1),2:(nc-1)]
    x23 = flow[2:(nr-1),3:nc]
    x31 = flow[3:nr,1:(nc-2)]
    x32 = flow[3:nr,2:(nc-1)]
    x33 = flow[3:nr,3:nc]
    xn = x11+x12+x13+x21+x23+x31+x32+x33
    xx = ifelse((x22 == 1 & (xn==2 | xn==3)) | (x22 == 0 & (xn==3)),1,0)
    flow = matrix(0,nr,nc)
    flow[2:(nr-1),2:(nc-1)] = xx
    re[[i]]=flow
  }
  re
}

