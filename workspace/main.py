import cv2
import argparse

def main():

	parser = argparse.ArgumentParser()
	parser.add_argument('--src')
	args = parser.parse_args()

	src = cv2.imread(args.src, 0)
	ret,dst = cv2.threshold(src,127,255,cv2.THRESH_BINARY_INV)
	cv2.imwrite("output.png", dst)

	while True:

		k = cv2.waitKey(0) & 0xFF
		if k == 27:
			break
		cv2.imshow("effect",dst)


if __name__ == "__main__":
    main()
