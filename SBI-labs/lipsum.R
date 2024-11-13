## HW-Task: extend this lipsum function to support as well 
##          Section 1.10.33 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC
##          and the translation of all types into English, implementing lang="english"
##          save and upload the file as `username-lipsum.R`
##          where username is your email shortage of the University of Potsdam
## 
## See for the other text and the translations:  https://www.lipsum.com/

## Below follows the documentation.
## You can create an HTML file out of this Markdown code like so:
## perl -ne "/^#' *(.*)/ and print \"\$1\n\"" lipsum.R | pandoc -f gfm -t HTML -o lipsum.html -s --metadata title="lipsum.R"
## the perl oneliner filters out all lines starting with `#'' and removes the comment
## these lines are piped then into pandoc to create a HTML file

#'
#' **Name:**  lipsum - create lipsum texts with R
#'
#' **Usage:** `lipsum(type=1, paragraphs=1, lang="latin")`
#' 
#' **Arguments:**
#'    - type - the lipsum block, either 1 (Lorem lipsum ...) or 2 (Sed ut perspiciatis ...), default: 1
#'    - paragraphs - integer, how many paragraphs, default: 1
#'    - lang - either 'latin' or 'english', the latter is not yet implemented, default: 'latin'
#' 
#' **Returns:** text paragraphs usually shown with cat
#'
#' **Example:**
#'
#' ```{r}
#' cat(lipsum(1,paragraphs=2))
#' ``` 

lipsum <- function (type=1, paragraphs=1,lang="latin") {
   if (lang == "latin") {
       if (type == 1) {
           lips=paste(rep("Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                          sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                          Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                          nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                          reprehenderit in voluptate velit esse cillum dolore eu fugiat
                          nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                          sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n",paragraphs),collapse="")
       } else if (type == 2) {
           lips=paste(rep("Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                          accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                          quae ab illo inventore veritatis et quasi architecto beatae vitae
                          dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas
                          sit aspernatur aut odit aut fugit, sed quia consequuntur magni
                          dolores eos qui ratione voluptatem sequi nesciunt. Neque porro
                          quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                          adipisci velit, sed quia non numquam eius modi tempora incidunt
                          ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim
                          ad minima veniam, quis nostrum exercitationem ullam corporis
                          suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
                          Quis autem vel eum iure reprehenderit qui in ea voluptate velit
                          esse quam nihil molestiae consequatur, vel illum qui dolorem eum
                          fugiat quo voluptas nulla pariatur?\n\n",paragraphs),collapse="")
       } else {
         stop("only type 1 and 2 are supported")
      } 
   } else {
      stop("Only latin supported currently")
   }
   lips=gsub("  +", " ",lips)
   return(lips)
}
