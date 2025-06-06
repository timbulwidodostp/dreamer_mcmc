# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Bayesian Model Averaging of Dose Response Models Use dreamer_mcmc (dreamer) With (In) R Software
install.packages("dreamer")
install.packages("knitr")
library("knitr")
library("dreamer")
dreamer_mcmc = read.csv("https://raw.githubusercontent.com/timbulwidodostp/dreamer_mcmc/main/dreamer_mcmc/dreamer_mcmc.csv",sep = ";")
# Estimation Bayesian Model Averaging of Dose Response Models Use dreamer_mcmc (dreamer) With (In) R Software
dreamer_mcmc <- dreamer_mcmc(data = dreamer_mcmc, n_adapt = 1e3, n_burn = 1e2, n_iter = 1e3, n_chains = 2, silent = TRUE, 
mod_linear = model_linear(mu_b1 = 0, sigma_b1 = 1, mu_b2 = 0, sigma_b2 = 1, shape = 1, rate = .001, w_prior = 1 / 2),
mod_quad = model_quad(mu_b1 = 0, sigma_b1 = 1, mu_b2 = 0, sigma_b2 = 1, mu_b3 = 0, sigma_b3 = 1, shape = 1, rate = .001, w_prior = 1 / 2))
dreamer_mcmc
summary(dreamer_mcmc)
posterior(dreamer_mcmc)
# Bayesian Model Averaging of Dose Response Models Use dreamer_mcmc (dreamer) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
