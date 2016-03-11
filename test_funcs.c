#include <stdio.h>
#include <time.h>
#include "Header.h"
#include "Header_ASM.h"

//extern "C" {


//}

void test_AddRoundKey(){
uint w[]= {0x00010203,0x10111213,0x20212223,0x30313233};
uchar state1[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
uchar state2[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
int i;
				 
	AddRoundKey(state1, w);
	AddRoundKey_ASM(state2, w);

	for(i=0;i<16;i++)
		if( ((uchar *) state1)[i]!=((uchar *) state2)[i]){
			printf("AddRoundKey: Failed\n");
			return;
		}
	printf("AddRoundKey: Passed\n");
	
}

void test_SubBytes_ASM(){
uchar state1[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
uchar state2[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
int i;
				 
	SubBytes(state1);
	SubBytes_ASM(state2);

	for(i=0;i<16;i++)
		if( ((uchar *) state1)[i]!=((uchar *) state2)[i]){
			printf("SubBytes: Failed\n");
			return;
		}
	printf("SubBytes: Passed\n");
}

void test_InvSubBytes_ASM(){
uchar state1[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
uchar state2[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
int i;
				 
	InvSubBytes(state1);
	InvSubBytes_ASM(state2);

	for(i=0;i<16;i++)
		if( ((uchar *) state1)[i]!=((uchar *) state2)[i]){
			printf("InvSubBytes: Failed\n");
			return;
		}
	printf("InvSubBytes: Passed\n");

}

void test_ShiftRows_ASM(){
uchar state1[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
uchar state2[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
int i;
				 
	ShiftRows(state1);
	ShiftRows_ASM(state2);

	for(i=0;i<16;i++)
		if( ((uchar *) state1)[i]!=((uchar *) state2)[i]){
			printf("ShiftRows: Failed\n");
			return;
		}
	printf("ShiftRows: Passed\n");

}

void test_InvShiftRows_ASM(){
uchar state1[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
uchar state2[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
int i;
				 
	InvShiftRows(state1);
	InvShiftRows_ASM(state2);

	for(i=0;i<16;i++)
		if( ((uchar *) state1)[i]!=((uchar *) state2)[i]){
			printf("InvShiftRows: Failed\n");
			return;
		}
	printf("InvShiftRows: Passed\n");

}

void test_MixColumns_ASM(){
uchar state1[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
uchar state2[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
int i;
				 
	MixColumns(state1);
	MixColumns_ASM(state2);

	for(i=0;i<16;i++)
		if( ((uchar *) state1)[i]!=((uchar *) state2)[i]){
			printf("MixColumns: Failed\n");
			return;
		}
	printf("MixColumns: Passed\n");

}

void test_InvMixColumns_ASM(){
uchar state1[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
uchar state2[][4]={{0x00,0x01,0x02,0x03},
				 {0x10,0x11,0x12,0x13},
				 {0x20,0x21,0x22,0x23},
				 {0x30,0x31,0x32,0x33}};
int i;
				 
	InvMixColumns(state1);
	InvMixColumns_ASM(state2);

	for(i=0;i<16;i++)
		if( ((uchar *) state1)[i]!=((uchar *) state2)[i]){
			printf("InvMixColumns: Failed\n");
			return;
		}
	printf("InvMixColumns: Passed\n");


}

void test_SubWord_ASM(){
	uint word=0x11223344;
	if(SubWord(word)!=SubWord_ASM(word))
		printf("SubWord: Failed\n");
	else
		printf("SubWord: Passed\n");

}

void test_KeyExpansion_ASM(){

}

void test_encrypt_ASM(){
	unsigned char plaintext[]={"Brown Corpus, an"};
	unsigned char ciphertext1[16];
	unsigned char ciphertext2[16];

	unsigned char key[32]={0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,
                 0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,0x11, 
                 0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,
                 0x1b,0x1c,0x1d,0x1e,0x1f};
	unsigned int key_schedule[60],i;
   
	KeyExpansion(key,key_schedule);
	encrypt(plaintext,ciphertext1,key_schedule); 
	encrypt_ASM(plaintext,ciphertext2,key_schedule);

		for(i=0;i<16;i++)
		if( ((uchar *) ciphertext1)[i]!=((uchar *) ciphertext2)[i]){
			printf("encrypt: Failed\n");
			return;
		}
	printf("encrypt: Passed\n");
}

void test_decrypt_ASM(){
	unsigned char plaintext[]={"Brown Corpus, an"};
	unsigned char ciphertext1[16];
	unsigned char ciphertext2[16];

	unsigned char key[32]={0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,
                 0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,0x11, 
                 0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,
                 0x1b,0x1c,0x1d,0x1e,0x1f};
	unsigned int key_schedule[60],i;
   
	KeyExpansion(key,key_schedule);
	decrypt(plaintext,ciphertext1,key_schedule); 
	decrypt_ASM(plaintext,ciphertext2,key_schedule);

		for(i=0;i<16;i++)
		if( ((uchar *) ciphertext1)[i]!=((uchar *) ciphertext2)[i]){
			printf("encrypt: Failed\n");
			return;
		}
	printf("encrypt: Passed\n");
}

void test_speed(){
	unsigned char plaintext[]={"Brown Corpus, and others had to resort to conventions such as keying an asterisk preceding letters actually intended to be upper-case. Fred Brooks of IBM argued strongly for going to 8-bit bytes, because someday people might want to process text; and won. Although IBM used EBCDIC, most text from then on came to be encoded in ASCII, using values from 0 to 31 for (non-printing) control characters, and values from 32 to 127 for graphic characters such as letters, digits, and punctuation. Most machines stored characters in 8 bits rather than 7, ignoring the remaining bit or using it as a checksum. The near-ubiquity of ASCII was a great help, but failed to address international and linguistic concerns. The dollar-sign ($) was not so useful in England, and the accented characters used in Spanish, French, German, and many other languages were entirely unavailable in ASCII (not to mention characters used in Greek, Russian, and most Eastern languages). Many individuals, companies, and countries defined extra characters as needed—often reassigning control characters, or using value in the range from 128 to 255. Using values above 128 conflicts with using the 8th bit as a checksum, but the checksum usage gradually died out. These additional characters were encoded differently in different countries, making texts impossible to decode without figuring out the originator's rules. For instance, a browser might display A rather than  if it tried to interpret one character set as another. The International Organisation for Standardisation xx(ISO) eventually developed several code pages under ISO 8859, to accommodate various languages. The first of these (ISO 8859-1) is also known as Latin-1, and covers the needs of most (not all) European languages that use Latin-based characters (there was not quite enough room to cover them all). ISO 2022 then provided conventions for switching between different character sets in mid-file. Many other organisations developed variations on these, and for many years Windows and Macintosh computers used incompatible variations. The text-encoding situation became more and more complex, leading to efforts by ISO and by the Unicode Consortium to develop a single, unified character encoding that could cover all known (or at least all currently known) languages. After some conflict,[citation needed] these efforts were unified. Unicode currently allows for 1,114,112 code values, and assigns codes covering nearly all modern text writing systems, as well as many historical ones and for many non-linguistic characters such as printer's dingbats, mathematical symbols, etc. Text is considered plain-text regardless of its encoding. To properly understand or process it the recipient must know (or be able to figure out"};
	unsigned char ciphertext[3200];
	unsigned char key[32]={0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,
                 0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0x10,0x11, 
                 0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,
                 0x1b,0x1c,0x1d,0x1e,0x1f};
	unsigned char plaintext2[3200];
	unsigned int key_schedule[60],i,j;
   FILE * f;
	time_t t1,t2;
	t1=clock();
	KeyExpansion(key,key_schedule);
	for(j=0;j<1000;j++){
		for(i=0;i<200;i++)
			encrypt(plaintext+i*16,ciphertext+i*16,key_schedule); 
	
		for(i=0;i<200;i++)
			decrypt(ciphertext+i*16,plaintext2+i*16,key_schedule); 
	}
	t2=clock();
	printf("C: \t%f\n", (double)(t2-t1)/CLOCKS_PER_SEC);
	
	t1=clock();
	KeyExpansion(key,key_schedule);
	for(j=0;j<1000;j++){
		for(i=0;i<200;i++)
			encrypt_ASM(plaintext+i*16,ciphertext+i*16,key_schedule); 
	
		for(i=0;i<200;i++)
			decrypt_ASM(ciphertext+i*16,plaintext2+i*16,key_schedule); 
	}
	t2=clock();
	printf("ASM: \t%f\n", (double)(t2-t1)/CLOCKS_PER_SEC);
	
	
	//f=fopen("t1.txt","w");
	
	//fprintf(f,"%s",plaintext2);
	//fclose(f);
	getchar(); 
	return ; 



}


void main(){
	test_SubBytes_ASM();

test_InvSubBytes_ASM();

test_ShiftRows_ASM();

test_InvShiftRows_ASM();

test_MixColumns_ASM();

test_InvMixColumns_ASM();

test_SubWord_ASM();

test_KeyExpansion_ASM();

test_encrypt_ASM();

test_decrypt_ASM();
	test_speed();
}