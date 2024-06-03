# Package names
packages <- c("knitr", "rjson", "wordcloud", "RColorBrewer", "kableExtra", "babynames")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
    install.packages(packages[!installed_packages])
}