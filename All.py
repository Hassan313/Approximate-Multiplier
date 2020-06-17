
import os


FileCounts = 150 

path_Mod = '/home/home2/students/afzalikusha/CGRA/Multiplier_Ref' ;
path_DC = '/home/home2/students/afzalikusha/CGRA/DC/Dadda_DC_Scripts'

for i in range (FileCounts):
	
	
	path_dir = path + ..........
	os.chdir(path_dir)
	
	fid = open('Sobel.txt','r')
	newLines = fid.read()
	fid.close()
	
	fid2 = open('Sobel_App.v','w')
	for i in range(DFG_nodes):
		Unum = "W U" + str(i) + " "
		newLines = re.sub(Unum, "W"+ str(Config[i]) + " U" + str(i) + " ", newLines)
	newLines = re.sub('Sobel', 'Sobel_App', newLines)
	fid2.write(newLines)  		
	fid2.close()
	
	pr = os.system('vcs -O4 *.v')
	pr = os.system('./simv')