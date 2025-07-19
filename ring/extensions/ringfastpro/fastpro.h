#define C_INSCOUNT 1000

enum updateListInstructions {
	INS_SET,
	INS_ADD,
	INS_SUB,
	INS_MUL,
	INS_DIV,
	INS_MERGE,
	INS_COPY,
	INS_SERIAL,
	INS_POW,
	INS_REM
};

void ring_mandelbrot(void *pPointer) ;