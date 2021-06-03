import sys, os, time, subprocess

imageList = []


if len(sys.argv) == 2:
    curr_dir = sys.argv[1]
else:
    curr_dir = '.'

for root, dirs, files in os.walk(curr_dir):
    for f in files:
        if f.endswith('.png') or f.endswith('.jpg') or f.endswith('.webp'):
            img_path = os.path.join(root, f)
            print(img_path)
            imageList.append(img_path)

prevProcess = None
while True:
    for image in imageList:
        process = subprocess.Popen(['feh', '--auto-zoom', '--fullscreen', image])
        time.sleep(3)
        process.terminate()
