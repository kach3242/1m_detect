all: 1m_detect

1m_detect: 1m_detect.o
	g++ -o 1m_detect 1m_detect.o -lnetfilter_queue

1m_detect.o: 1m_detect.c
	g++ -c -o 1m_detect.o 1m_detect.c

clean:
	rm -f *.o 1m_detect

