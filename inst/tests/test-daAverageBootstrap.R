test_that("Average bootstrap should have correct sample values", {
  x1<-rnorm(1000)
  x2<-rnorm(1000)
  x3<-rnorm(1000)
  x4<-rnorm(1000)
  y1<-10*x1+8*x2+6*x3+4*x4+rnorm(1000)
  y2<-x1+x2+x3+x4+rnorm(1000)
  d.f<-data.frame(xa=x1,xb=x2,xc=x3,xd=x4,y=y1,y2=y2)
  lm.1<-lm(y~xa+xb+xc+xd,data=d.f)
  bs.da.1 <- bootAverageDominanceAnalysis(lm.1, R=2)
  expect_equivalent(names(bs.da.1),c("boot","preds","fit.functions","R","eg"))
  expect_equivalent(bs.da.1$R,2)

})
