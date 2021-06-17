drug_data <- getDrugData("PLX-4720")

 trainFrame = drug_data

exp <- t(as.data.frame(expr.mat))

commongene<-intersect(rownames(exp),colnames(drug_data)) #9719




cat(paste(Sys.time(),"==========",drug,":\n"))
#############################################
######### 1. GR paper linear Ridge  #########
#############################################
cat(paste(Sys.time(),"==========","1. GR paper linear Ridge Start...\n"))
model_GR <- linearRidge(Resp ~ ., data = trainFrame)
preds_GR<-predict(model_GR,trainFrame)
GR_result<-eval_result(preds_GR)
GR_result$method <- "GR paper linear Ridge"
GR_result$drug <- drug
cat(paste(Sys.time(),"==========","1. GR paper linear Ridge Complete\n"))
