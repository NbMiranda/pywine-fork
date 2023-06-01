import os

home_directory = os.path.expanduser("~")
os.chdir(home_directory)

erp_directory = os.path.join(home_directory, "pedbot-erp")
os.makedirs(erp_directory, exist_ok=True)

erp_file = os.path.join(erp_directory, "arquivo2.txt")
with open(erp_file, 'w') as file:
    file.write("Arquivo texto :)")
