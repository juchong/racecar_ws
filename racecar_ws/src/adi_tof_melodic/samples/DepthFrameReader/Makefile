TARGET := DepthFrameReader

SOURCE := DepthFrameReader.cpp

FLAGS := -I../../Include -Wl,-rpath,./:../../Lib:../Lib:../../Thirdparty/opencv-3.4.1/lib:../../Thirdparty/ffmpeg/lib:../Thirdparty/opencv-3.4.1/lib:../Thirdparty/ffmpeg/lib -Wall -Wconversion -O3 -L../../Lib -lpicozense_api

$(TARGET):$(SOURCE)
	g++ -std=c++11 -o $(TARGET) $(SOURCE) $(FLAGS) 

clean:
	rm -rf *.o $(TARGET)
