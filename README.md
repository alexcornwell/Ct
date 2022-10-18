# Ct

# RT-qPCR instrument 
Raw files were obtained by QTower 84 AnalytikJena

# Sample information
Each sample represents a different treatment with controls to compare relative mRNA expression. Total RNA from cells was extracted using Trizol and chloroform reagents (Invitrogen) following the manufacturer's instructions. Sample concentrations were determined using Nanodrop One. First-strand cDNA synthesis was performed on 5µg total RNA using M-MLV reverse transcriptase (Invitrogen) and random hexamers (IDT, Coralville, IA) and stored at −20°C. PowerUp SYBR Green Mix (Applied Biosystems, Waltham, MA) was used according to the manufacturer's instructions in a 384-well format. Data represent three seperate experiments; each sample was repeated for three technical repeats. The sense and antisense primers were designed using NIH Blast Primer tool.

# Script information
The script file ct_sort.sh was designed to work with the .csv file contained in this repository. The script organizes the data by creating a header file, to which, Raw and unaveraged Ct values are appended with their corresponding gene information (e.g. GAPDH, IL-10). Temporary files are created to hold the current contents as unneccessary columns are trimmed. Finally, at the last step, the temporary files are deleted. The final Ct_output.csv can then be used by other statistical software.
