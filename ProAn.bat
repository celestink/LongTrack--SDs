@ECHO OFF
FOR %%f in (*.inp) DO abaqus job=%%f interactive
