# LongTrack--SDs
#Analysis of stresses and fatigue with respect to the standard deviations of random spatially distributred stiffness
First Run the file ChangingSD05.y by following the procedure described below:
Access the folder LongTrack--SDs where the file "ChangingSD05.py" is located via command prompt
On the command line of CMD type abaqus cae nogui=ChangingSD05.py. This will generate abaqus input files.
After it finishes running, run the batch file "ProAn.bat" by typing it on command line and then hitting enter on keyboard. This will run abaqus input jobs.
Run the file testfiles by typing in command prompt python=testfiles. Make sure python is installed on the computer. Makesure the path indicated in the file codes matches the path to access abaqus input files.
Open the created folder Rerun1 and double click ProAn.bat This will rerun the the abaqus input files that didn't get run at the first attempt. 
Copy the abaqus odb files from rerun folder to LonfTrack--SDs folder.
On command prompt without leaving the directory run the script odbAnalysisSD05.py by typing  abaqus cae nogui=ChangingSD05.py. This will extract desired ascii data from the odb binary files and the data will be saved in  files with extension .txt
Run the matlab codes in order: 1. SDStiff.m, 2. SDStiffext.m, 3.SDStiffStr.m, 4. StiffStmw.m. Make sure these files are in their respective folders.



