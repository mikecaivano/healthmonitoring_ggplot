# ggplotReferenceRanges

Code to create a scatter plot of patient samples over time using Rstudio

## Description

healthmonitoring_ggplot uses a csv input to create a line graph over time with 1-2 upper and lower limits.  

### Dependencies

Rstudio
tidyverse

### Installing

Code can be accessed by anyone on https://github.com/mikecaivano/ggplotreferenceranges

### Executing program

This program is designed to be utilized within the Rstudio platform. 

>Copy the code into Rstudio
>Uploat csv file you wish to be plotted
#The csv format requires labels. In column one "Collection.Date" should be denoted and "Value" in column two.
>install dependencies
>Change 'pt5bun %>%' to the title of your csv
>In "geom_ribbon(aes(ymin = 0, ymax = 6))" change 6 to the lower limit
>In "scale_y_continuous(limits = c(0,25), expand = c(0, 0))" change 25 to the max height of the graph desired
>In "geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = 20.6, ymax = Inf), 
            fill = "pink", alpha = .15)" change 20.6 to the upper limit of range
>In "geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = 8.9),
            fill = "pink", alpha = .15)" change 8.9 to lower limit of range
>Correspond these new upper and lower limits to ymax and ymin "geom_rect(aes(xmin = -Inf, xmax = Inf, ymin = 8.9, ymax = 20.6), fill = "green", alpha = .03)"
>If a second upper and lower limit is not required, remove the following lines of code
"geom_hline(yintercept=14.6, linetype = 2, size = .75)+"
"geom_hline(yintercept=17.4, linetype = 2, size = .75)+"
>If second set of limits is required, replace yintercept values to upper and lower limits
>Replace first upper and lower limits in the following lines
"geom_hline(yintercept=20.6, linetype = 1, size = .75)"
"geom_hline(yintercept=8.9, linetype = 1, size = .75)"
>Change title and axis in the following line according to csv
abs(title = "Sample ID 4 BUN", y = "BUN mg/dL", x = "Collection Date",)


## Help
Make sure tidyverse package is installed
Make sure that labels are selected when importing csv to Rstudio

## Authors

Michael Caivano, caivano.m@northeastern.edu

## Version History

1.0 - Initial Compilation

## Acknowledgements
