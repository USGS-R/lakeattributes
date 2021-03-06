% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encryption_helpers.R
\name{write_aes}
\alias{write_aes}
\title{Write encrypted data frame to file}
\usage{
write_aes(df, filename, key)
}
\arguments{
\item{df}{A \code{\link{data.frame}} to encrypt and write.}

\item{filename}{Location to save or load encrypted binary file}

\item{key}{A secret key as a character string value. Must be <= 32 characters in length}
}
\description{
WARNING: Do not use for security critical applications. I am not a security expert. 
This is for low-security applications only.

This function encrypts and writes a data frame. It tries to be fairly efficient and can 
encrypt and write fairly large files (~ few seconds with ~500k rows). It makes assumptions
that could cause problems right now (default escaping and quoting from \code{\link{write.csv}})
used.
}
\seealso{
\code{\link{read_aes}}, derived from this post: 
\url{http://stackoverflow.com/questions/25318800/how-do-i-read-an-encrypted-file-from-disk-with-r}
}

