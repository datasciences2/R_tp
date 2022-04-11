corpulence<- function(poids,taille)
{ 
  MIC<- poids/taille**2
  if (MIC<17){
    print('Maigre')
  }
  else if( MIC>=17 & MIC<27)
    {
    print("Normale")
  } 
  else if(MIC>=27){
    print("Obèse")
  }
}

corpulence(170,80)

name<-c("ikram","Paul","Pierre","TOutou")
tailles<-c(1.65,1.89,1.75,1.38)
poids=c(75,70,77,67)
corpulenceGroup<-function(name,poid,tail){
  c=""
  i=1
  while (i!= length(name)+1){ 
  print(paste(toString(name[i]),toString(corpulence(poids=poid[i],taille=tail[i]))))
    i<-i+1
  }
  #return(c)
}
corpulenceGroup(name,poids,tailles)
