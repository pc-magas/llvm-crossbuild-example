import subprocess
import sys
import os
import argparse

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dest")
    parser.add_argument("--stamp")
    args = parser.parse_args()

    # Only run xwin if the directory doesn't exist to save time
    if not os.path.exists(args.dest):
        print(f"Running xwin to populate {args.dest}...")
        # Add your specific xwin flags here (e.g., --accept-license)
        subprocess.run(["xwin", "--accept-license", "splat", "--dest", args.dest], check=True)

    # Create the stamp file so Ninja knows we are done
    with open(args.stamp, "w") as f:
        f.write("done")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())