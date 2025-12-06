import os
print('Current directory:', os.getcwd())
print('Directory writable:', os.access('.', os.W_OK))
print('Files in directory:')
for f in os.listdir('.'):
    if f.endswith(('.jpg', '.h5')):
        print(f'  {f}: exists={os.path.exists(f)}, readable={os.access(f, os.R_OK)}')
