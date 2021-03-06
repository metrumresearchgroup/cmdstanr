% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit.R
\name{fit-method-draws}
\alias{fit-method-draws}
\title{Extract posterior draws}
\description{
Extract posterior draws after MCMC or approximate posterior
draws after variational approximation using formats provided by the
\pkg{posterior} package.

The variables include the \code{parameters}, \verb{transformed parameters}, and
\verb{generated quantities} from the Stan program as well as \code{lp__}, the total
log probability (\code{target}) accumulated in the \code{model} block.
}
\section{Usage}{
\preformatted{$draws(inc_warmup = FALSE, ...)
}
}

\section{Arguments}{

\itemize{
\item \code{inc_warmup}: Should warmup draws be included? Defaults to \code{FALSE}. Only
applicable for MCMC.
\item \code{...}: Arguments passed on to \code{\link[posterior:as_draws]{posterior::as_draws()}}.
}
}

\section{Value}{

\itemize{
\item For MCMC, a 3-D \code{\link[posterior:draws_array]{draws_array}} object (iteration x
chain x variable).
\item For variational inference, a 2-D \code{\link[posterior:draws_matrix]{draws_matrix}}
object (draw x variable). An additional variable \code{lp_approx__} is also
included, which is the log density of the variational approximation to the
posterior evaluated at each of the draws.
\item For optimization, a 1-row \code{\link[posterior:draws_matrix]{draws_matrix}} with
one column per variable. These are \emph{not} actually draws, just point estimates
stored in the \code{draws_matrix} format.
}
}

