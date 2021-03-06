#' Dominance analysis for general, generalized and mixed linear models
#'
#' Dominance analysis is a method developed to measure the predictor's importance
#' on a regression analysis: "one predictor is 'more important than another' 
#' if it contributes more to the prediction of the criterion than does its competitor 
#' at a given level of analysis." (Azen & Bodescu, 2003, p.133). 
#' The original method was developed for OLS regression (Bodescu, 1993). Later, several definitions of dominance and bootstrap procedures are provided (Azen & Bodescu, 2003), as adaptations to GLM (Azen & Traxel, 2009) and LMM (Luo & Azen, 2012).
#' The main method on this package is \code{\link{dominanceAnalysis}}. For bootstrap procedures, you
#' should use \code{\link{bootDominanceAnalysis}}. For the latter, standard \code{summary} method is provided
#' @name dominanceanalysis-package
#' @aliases dominanceanalysis
#' @docType package
#' @title Dominance analysis for general, generalized and mixed linear models
#' @author Claudio Bustos \email{clbustos_at_gmail_com}
#' @seealso \code{\link{dominanceAnalysis}} , \code{\link{bootDominanceAnalysis}}
#' @references
#' \itemize{
#' \item Budescu, D. V. (1993). Dominance analysis: A new approach to the problem of relative importance of predictors in multiple regression. Psychological Bulletin, 114(3), 542-551. doi:10.1037/0033-2909.114.3.542
#'
#' \item Azen, R., & Budescu, D. V. (2003). The dominance analysis approach for comparing predictors in multiple regression. Psychological Methods, 8(2), 129-148. doi:10.1037/1082-989X.8.2.129
#' 
#' \item Azen, R., & Traxel, N. (2009). Using Dominance Analysis to Determine Predictor Importance in Logistic Regression. Journal of Educational and Behavioral Statistics, 34(3), 319-347. doi:10.3102/1076998609332754
#' 
#' \item Luo, W., & Azen, R. (2012). Determining Predictor Importance in Hierarchical Linear Models Using Dominance Analysis. Journal of Educational and Behavioral Statistics, 38(1), 3-31. doi:10.3102/1076998612458319
#' }
#' @examples
#' # Basic dominance analysis 
#' 
#' lm.1<-lm(Employed~.,longley)
#' da<-dominanceAnalysis(lm.1)
#'
#' # Bootstrap procedure
#' 
#' \dontrun{
#' da.boot<-bootDominanceAnalysis(lm.1,R=1000)
#' summary(da.boot)
#' }

NULL
