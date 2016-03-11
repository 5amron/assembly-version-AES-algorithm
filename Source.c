#include <stdio.h>
#include "Header.h"
#include <time.h>
int main() 
{   
	unsigned char plaintext[]={"Brown Corpus, and others had to resort to conventions such as keying an asterisk preceding letters actually intended to be upper-case. Fred Brooks of IBM argued strongly for going to 8-bit bytes, because someday people might want to process text; and won. Although IBM used EBCDIC, most text from then on came to be encoded in ASCII, using values from 0 to 31 for (non-printing) control characters, and values from 32 to 127 for graphic characters such as letters, digits, and punctuation. Most machines stored characters in 8 bits rather than 7, ignoring the remaining bit or using it as a checksum. The near-ubiquity of ASCII was a great help, but failed to address international and linguistic concerns. The dollar-sign ($) was not so useful in England, and the accented characters used in Spanish, French, German, and many other languages were entirely unavailable in ASCII (not to mention characters used in Greek, Russian, and most Eastern languages). Many individuals, companies, and countries defined extra characters as needed—often reassigning control characters, or using value in the range from 128 to 255. Using values above 128 conflicts with using the 8th bit as a checksum, but the checksum usage gradually died out. These additional characters were encoded differently in different countries, making texts impossible to decode without figuring out the originator's rules. For instance, a browser might display A rather than  if it tried to interpret one character set as another. The International Organisation for Standardisation ≤≤(ISO) eventually developed several code pages under ISO 8859, to accommodate various languages. The first of these (ISO 8859-1) is also known as Latin-1, and covers the needs of most (not all) European languages that use Latin-based characters (there was not quite enough room to cover them all). ISO 2022 then provided conventions for switching between different character sets in mid-file. Many other organisations developed variations on these, and for many years Windows and Macintosh computers used incompatible variations. The text-encoding situation became more and more complex, leading to efforts by ISO and by the Unicode Consortium to develop a single, unified character encoding that could cover all known (or at least all currently known) languages. After some conflict,[citation needed] these efforts were unified. Unicode currently allows for 1,114,112 code values, and assigns codes covering nearly all modern text writing systems, as well as many historical ones and for many non-linguistic characters such as printer's dingbats, mathematical symbols, etc. Text is considered plain-text regardless of its encoding. To properly understand or process it the recipient must know (or be able to figure out"};
	unsigned char ciphertext[3200];
	unsigned char key[32]={0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,
                 0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,0x11, 
                 0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,
                 0x1b,0x1c,0x1d,0x1e,0x1f};
	unsigned char plaintext2[3200];
	unsigned int key_schedule[60],idx;
   
	time_t t1,t2;
	t1=clock();
	KeyExpansion(key,key_schedule);
	for(int i=0;i<200;i++)
		encrypt(plaintext+i*16,ciphertext+i*16,key_schedule); 
	for(int i=0;i<200;i++)
		decrypt(ciphertext+i*16,plaintext2+i*16,key_schedule); 
	t2=clock();
	printf("%f\n", (double)(t2-t1)/CLOCKS_PER_SEC);
	FILE * f=fopen("t1.txt","w");
	
	fprintf(f,"%s",plaintext2);

	fclose(f);
	getchar(); 
	return 0; 
}  
