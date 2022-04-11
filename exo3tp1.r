#q1
v<-sample(255,20)
#Q2
A<- matrix(v,nrow = 5,ncol = 4)
#Q3
print(A[5,4])
#Q4
print(A[3,])
#Q5 pas fait
A[3:5,c(1,4)]
print(A[,4])
#Q6
dim(A) # nrow(A);ncol(A)
#Q7
vsc<-apply(A,2,sum)
print(vsc)
#Q8
A<-rbind(A,vsc)#rbind ajout row(line)
print(A)
#q9
vlm<-apply(A,1,mean)
#Q10
A<-cbind(A,vlm)# cbind ajout colonne
print(A)
#Q11
rownames(A)<-c('l1','l2','l3','l4','l5','somme')
#Q12
colname(A)<-c('c1','c2','c3','c4','somme')
#Q13
B<-A[1:nrow(A)-1,1:ncol(A)-1]
#Q14
C<-t(B) #tranposé matrix
#Q15
P<- B%*%C
print(P)
#=====================================================================
rowsum()
v<-sample(255,40)
#Q2
K<- matrix(v,nrow = 8,ncol = 5)
transpo= function(matrixe){
  matrix(data=as.vector(matrrixe),nrow = ncol(matrixe),
         ncol = nrow(matrixe),byrow = 1)
}
transpo(K)
