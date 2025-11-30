#define UART0 ((volatile unsigned int*)0x101f1000)

void uart_ptcc(char c) {
	while(*(UART0 + 0x18/4) & 0x20);
	*UART0 = c;
}

void uart_print(const char *s){
	while (*s) uart_ptcc(*s++);
}

void kmain(void) {
	uart_print("[J32] Kernel J32 Inicializado!");
}
