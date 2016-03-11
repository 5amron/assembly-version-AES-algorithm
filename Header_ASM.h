#define uchar unsigned char // 8-bit byte
#define uint unsigned int // 32-bit word

//#define TEST_MODE

void AddRoundKey_ASM(uchar[][4], uint[]);
#ifdef TEST_MODE
void SubBytes_ASM(uchar state[][4])
{
   state[0][0] = sbox[state[0][0] >> 4][state[0][0] & 0x0F];
   state[0][1] = sbox[state[0][1] >> 4][state[0][1] & 0x0F];
   state[0][2] = sbox[state[0][2] >> 4][state[0][2] & 0x0F];
   state[0][3] = sbox[state[0][3] >> 4][state[0][3] & 0x0F];
   state[1][0] = sbox[state[1][0] >> 4][state[1][0] & 0x0F];
   state[1][1] = sbox[state[1][1] >> 4][state[1][1] & 0x0F];
   state[1][2] = sbox[state[1][2] >> 4][state[1][2] & 0x0F];
   state[1][3] = sbox[state[1][3] >> 4][state[1][3] & 0x0F];
   state[2][0] = sbox[state[2][0] >> 4][state[2][0] & 0x0F];
   state[2][1] = sbox[state[2][1] >> 4][state[2][1] & 0x0F];
   state[2][2] = sbox[state[2][2] >> 4][state[2][2] & 0x0F];
   state[2][3] = sbox[state[2][3] >> 4][state[2][3] & 0x0F];
   state[3][0] = sbox[state[3][0] >> 4][state[3][0] & 0x0F];
   state[3][1] = sbox[state[3][1] >> 4][state[3][1] & 0x0F];
   state[3][2] = sbox[state[3][2] >> 4][state[3][2] & 0x0F];
   state[3][3] = sbox[state[3][3] >> 4][state[3][3] & 0x0F];
}

void InvSubBytes_ASM(uchar state[][4])
{
   state[0][0] = invsbox[state[0][0] >> 4][state[0][0] & 0x0F];
   state[0][1] = invsbox[state[0][1] >> 4][state[0][1] & 0x0F];
   state[0][2] = invsbox[state[0][2] >> 4][state[0][2] & 0x0F];
   state[0][3] = invsbox[state[0][3] >> 4][state[0][3] & 0x0F];
   state[1][0] = invsbox[state[1][0] >> 4][state[1][0] & 0x0F];
   state[1][1] = invsbox[state[1][1] >> 4][state[1][1] & 0x0F];
   state[1][2] = invsbox[state[1][2] >> 4][state[1][2] & 0x0F];
   state[1][3] = invsbox[state[1][3] >> 4][state[1][3] & 0x0F];
   state[2][0] = invsbox[state[2][0] >> 4][state[2][0] & 0x0F];
   state[2][1] = invsbox[state[2][1] >> 4][state[2][1] & 0x0F];
   state[2][2] = invsbox[state[2][2] >> 4][state[2][2] & 0x0F];
   state[2][3] = invsbox[state[2][3] >> 4][state[2][3] & 0x0F];
   state[3][0] = invsbox[state[3][0] >> 4][state[3][0] & 0x0F];
   state[3][1] = invsbox[state[3][1] >> 4][state[3][1] & 0x0F];
   state[3][2] = invsbox[state[3][2] >> 4][state[3][2] & 0x0F];
   state[3][3] = invsbox[state[3][3] >> 4][state[3][3] & 0x0F];
}

void ShiftRows_ASM(uchar state[][4])
{
   int t;
   // Shift left by 1
   t = state[1][0];
   state[1][0] = state[1][1];
   state[1][1] = state[1][2];
   state[1][2] = state[1][3];
   state[1][3] = t;
   // Shift left by 2
   t = state[2][0];
   state[2][0] = state[2][2];
   state[2][2] = t;
   t = state[2][1];
   state[2][1] = state[2][3];
   state[2][3] = t;
   // Shift left by 3
   t = state[3][0];
   state[3][0] = state[3][3];
   state[3][3] = state[3][2];
   state[3][2] = state[3][1];
   state[3][1] = t;
}


void InvShiftRows_ASM(uchar state[][4])
{
   int t;
   // Shift right by 1
   t = state[1][3];
   state[1][3] = state[1][2];
   state[1][2] = state[1][1];
   state[1][1] = state[1][0];
   state[1][0] = t;
   // Shift right by 2
   t = state[2][3];
   state[2][3] = state[2][1];
   state[2][1] = t;
   t = state[2][2];
   state[2][2] = state[2][0];
   state[2][0] = t;
   // Shift right by 3
   t = state[3][3];
   state[3][3] = state[3][0];
   state[3][0] = state[3][1];
   state[3][1] = state[3][2];
   state[3][2] = t;
}


void MixColumns_ASM(uchar state[][4])
{
   uchar col[4];
   // Column 1
   col[0] = state[0][0];
   col[1] = state[1][0];
   col[2] = state[2][0];
   col[3] = state[3][0];
   state[0][0] = gf_mul[col[0]][0];
   state[0][0] ^= gf_mul[col[1]][1];
   state[0][0] ^= col[2];
   state[0][0] ^= col[3];
   state[1][0] = col[0];
   state[1][0] ^= gf_mul[col[1]][0];
   state[1][0] ^= gf_mul[col[2]][1];
   state[1][0] ^= col[3];
   state[2][0] = col[0];
   state[2][0] ^= col[1];
   state[2][0] ^= gf_mul[col[2]][0];
   state[2][0] ^= gf_mul[col[3]][1];
   state[3][0] = gf_mul[col[0]][1];
   state[3][0] ^= col[1];
   state[3][0] ^= col[2];
   state[3][0] ^= gf_mul[col[3]][0];
   // Column 2
   col[0] = state[0][1];
   col[1] = state[1][1];
   col[2] = state[2][1];
   col[3] = state[3][1];
   state[0][1] = gf_mul[col[0]][0];
   state[0][1] ^= gf_mul[col[1]][1];
   state[0][1] ^= col[2];
   state[0][1] ^= col[3];
   state[1][1] = col[0];
   state[1][1] ^= gf_mul[col[1]][0];
   state[1][1] ^= gf_mul[col[2]][1];
   state[1][1] ^= col[3];
   state[2][1] = col[0];
   state[2][1] ^= col[1];
   state[2][1] ^= gf_mul[col[2]][0];
   state[2][1] ^= gf_mul[col[3]][1];
   state[3][1] = gf_mul[col[0]][1];
   state[3][1] ^= col[1];
   state[3][1] ^= col[2];
   state[3][1] ^= gf_mul[col[3]][0];
   // Column 3
   col[0] = state[0][2];
   col[1] = state[1][2];
   col[2] = state[2][2];
   col[3] = state[3][2];
   state[0][2] = gf_mul[col[0]][0];
   state[0][2] ^= gf_mul[col[1]][1];
   state[0][2] ^= col[2];
   state[0][2] ^= col[3];
   state[1][2] = col[0];
   state[1][2] ^= gf_mul[col[1]][0];
   state[1][2] ^= gf_mul[col[2]][1];
   state[1][2] ^= col[3];
   state[2][2] = col[0];
   state[2][2] ^= col[1];
   state[2][2] ^= gf_mul[col[2]][0];
   state[2][2] ^= gf_mul[col[3]][1];
   state[3][2] = gf_mul[col[0]][1];
   state[3][2] ^= col[1];
   state[3][2] ^= col[2];
   state[3][2] ^= gf_mul[col[3]][0];
   // Column 4
   col[0] = state[0][3];
   col[1] = state[1][3];
   col[2] = state[2][3];
   col[3] = state[3][3];
   state[0][3] = gf_mul[col[0]][0];
   state[0][3] ^= gf_mul[col[1]][1];
   state[0][3] ^= col[2];
   state[0][3] ^= col[3];
   state[1][3] = col[0];
   state[1][3] ^= gf_mul[col[1]][0];
   state[1][3] ^= gf_mul[col[2]][1];
   state[1][3] ^= col[3];
   state[2][3] = col[0];
   state[2][3] ^= col[1];
   state[2][3] ^= gf_mul[col[2]][0];
   state[2][3] ^= gf_mul[col[3]][1];
   state[3][3] = gf_mul[col[0]][1];
   state[3][3] ^= col[1];
   state[3][3] ^= col[2];
   state[3][3] ^= gf_mul[col[3]][0];
}

void InvMixColumns_ASM(uchar state[][4])
{
   
   uchar col[4];
   // Column 1
   col[0] = state[0][0];
   col[1] = state[1][0];
   col[2] = state[2][0];
   col[3] = state[3][0];
   state[0][0] = gf_mul[col[0]][5];
   state[0][0] ^= gf_mul[col[1]][3];
   state[0][0] ^= gf_mul[col[2]][4];
   state[0][0] ^= gf_mul[col[3]][2];
   state[1][0] = gf_mul[col[0]][2];
   state[1][0] ^= gf_mul[col[1]][5];
   state[1][0] ^= gf_mul[col[2]][3];
   state[1][0] ^= gf_mul[col[3]][4];
   state[2][0] = gf_mul[col[0]][4];
   state[2][0] ^= gf_mul[col[1]][2];
   state[2][0] ^= gf_mul[col[2]][5];
   state[2][0] ^= gf_mul[col[3]][3];
   state[3][0] = gf_mul[col[0]][3];
   state[3][0] ^= gf_mul[col[1]][4];
   state[3][0] ^= gf_mul[col[2]][2];
   state[3][0] ^= gf_mul[col[3]][5];
   // Column 2
   col[0] = state[0][1];
   col[1] = state[1][1];
   col[2] = state[2][1];
   col[3] = state[3][1];
   state[0][1] = gf_mul[col[0]][5];
   state[0][1] ^= gf_mul[col[1]][3];
   state[0][1] ^= gf_mul[col[2]][4];
   state[0][1] ^= gf_mul[col[3]][2];
   state[1][1] = gf_mul[col[0]][2];
   state[1][1] ^= gf_mul[col[1]][5];
   state[1][1] ^= gf_mul[col[2]][3];
   state[1][1] ^= gf_mul[col[3]][4];
   state[2][1] = gf_mul[col[0]][4];
   state[2][1] ^= gf_mul[col[1]][2];
   state[2][1] ^= gf_mul[col[2]][5];
   state[2][1] ^= gf_mul[col[3]][3];
   state[3][1] = gf_mul[col[0]][3];
   state[3][1] ^= gf_mul[col[1]][4];
   state[3][1] ^= gf_mul[col[2]][2];
   state[3][1] ^= gf_mul[col[3]][5];
   // Column 3
   col[0] = state[0][2];
   col[1] = state[1][2];
   col[2] = state[2][2];
   col[3] = state[3][2];
   state[0][2] = gf_mul[col[0]][5];
   state[0][2] ^= gf_mul[col[1]][3];
   state[0][2] ^= gf_mul[col[2]][4];
   state[0][2] ^= gf_mul[col[3]][2];
   state[1][2] = gf_mul[col[0]][2];
   state[1][2] ^= gf_mul[col[1]][5];
   state[1][2] ^= gf_mul[col[2]][3];
   state[1][2] ^= gf_mul[col[3]][4];
   state[2][2] = gf_mul[col[0]][4];
   state[2][2] ^= gf_mul[col[1]][2];
   state[2][2] ^= gf_mul[col[2]][5];
   state[2][2] ^= gf_mul[col[3]][3];
   state[3][2] = gf_mul[col[0]][3];
   state[3][2] ^= gf_mul[col[1]][4];
   state[3][2] ^= gf_mul[col[2]][2];
   state[3][2] ^= gf_mul[col[3]][5];
   // Column 4
   col[0] = state[0][3];
   col[1] = state[1][3];
   col[2] = state[2][3];
   col[3] = state[3][3];
   state[0][3] = gf_mul[col[0]][5];
   state[0][3] ^= gf_mul[col[1]][3];
   state[0][3] ^= gf_mul[col[2]][4];
   state[0][3] ^= gf_mul[col[3]][2];
   state[1][3] = gf_mul[col[0]][2];
   state[1][3] ^= gf_mul[col[1]][5];
   state[1][3] ^= gf_mul[col[2]][3];
   state[1][3] ^= gf_mul[col[3]][4];
   state[2][3] = gf_mul[col[0]][4];
   state[2][3] ^= gf_mul[col[1]][2];
   state[2][3] ^= gf_mul[col[2]][5];
   state[2][3] ^= gf_mul[col[3]][3];
   state[3][3] = gf_mul[col[0]][3];
   state[3][3] ^= gf_mul[col[1]][4];
   state[3][3] ^= gf_mul[col[2]][2];
   state[3][3] ^= gf_mul[col[3]][5];
}



uint SubWord_ASM(uint word)
{
   unsigned int result;

   result = (int)sbox[(word >> 4) & 0x0000000F][word & 0x0000000F];
   result += (int)sbox[(word >> 12) & 0x0000000F][(word >> 8) & 0x0000000F] << 8;
   result += (int)sbox[(word >> 20) & 0x0000000F][(word >> 16) & 0x0000000F] << 16;
   result += (int)sbox[(word >> 28) & 0x0000000F][(word >> 24) & 0x0000000F] << 24;
   return(result);
}


#define KE_ROTWORD(x) ( ((x) << 8) | ((x) >> 24) )


void KeyExpansion_ASM(uchar key[], uint w[])
{
   int Nb=4,Nr,Nk,idx;
   uint temp,Rcon[]={0x01000000,0x02000000,0x04000000,0x08000000,0x10000000,0x20000000,
                     0x40000000,0x80000000,0x1b000000,0x36000000,0x6c000000,0xd8000000,
                     0xab000000,0x4d000000,0x9a000000};

   Nr = 14; Nk = 8;
 
   for (idx=0; idx < Nk; ++idx) {
      w[idx] = ((key[4 * idx]) << 24) | ((key[4 * idx + 1]) << 16) |
               ((key[4 * idx + 2]) << 8) | ((key[4 * idx + 3]));
   }

   for (idx = Nk; idx < Nb * (Nr+1); ++idx) {
      temp = w[idx - 1];
      if ((idx % Nk) == 0)
         temp = SubWord(KE_ROTWORD(temp)) ^ Rcon[(idx-1)/Nk];
      else if (Nk > 6 && (idx % Nk) == 4)
         temp = SubWord(temp);
      w[idx] = w[idx-Nk] ^ temp;
   }
}

void encrypt_ASM(uchar in[], uchar out[], uint key[])
{
   uchar state[4][4];

   state[0][0] = in[0];
   state[1][0] = in[1];
   state[2][0] = in[2];
   state[3][0] = in[3];
   state[0][1] = in[4];
   state[1][1] = in[5];
   state[2][1] = in[6];
   state[3][1] = in[7];
   state[0][2] = in[8];
   state[1][2] = in[9];
   state[2][2] = in[10];
   state[3][2] = in[11];
   state[0][3] = in[12];
   state[1][3] = in[13];
   state[2][3] = in[14];
   state[3][3] = in[15];

   // Perform the necessary number of rounds. The round key is added first.
   // The last round does not perform the MixColumns step.
   AddRoundKey(state,&key[0]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[4]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[8]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[12]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[16]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[20]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[24]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[28]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[32]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[36]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[40]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[44]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[48]);
   SubBytes(state); ShiftRows(state); MixColumns(state); AddRoundKey(state,&key[52]);
   SubBytes(state); ShiftRows(state); AddRoundKey(state,&key[56]);

   

   // Copy the state to the output array
   out[0] = state[0][0];
   out[1] = state[1][0];
   out[2] = state[2][0];
   out[3] = state[3][0];
   out[4] = state[0][1];
   out[5] = state[1][1];
   out[6] = state[2][1];
   out[7] = state[3][1];
   out[8] = state[0][2];
   out[9] = state[1][2];
   out[10] = state[2][2];
   out[11] = state[3][2];
   out[12] = state[0][3];
   out[13] = state[1][3];
   out[14] = state[2][3];
   out[15] = state[3][3];
}




void decrypt_ASM(uchar in[], uchar out[], uint key[])
{
   uchar state[4][4];
   // Copy the input to the state.
   state[0][0] = in[0];
   state[1][0] = in[1];
   state[2][0] = in[2];
   state[3][0] = in[3];
   state[0][1] = in[4];
   state[1][1] = in[5];
   state[2][1] = in[6];
   state[3][1] = in[7];
   state[0][2] = in[8];
   state[1][2] = in[9];
   state[2][2] = in[10];
   state[3][2] = in[11];
   state[0][3] = in[12];
   state[1][3] = in[13];
   state[2][3] = in[14];
   state[3][3] = in[15];

   // Perform the necessary number of rounds. The round key is added first.
   // The last round does not perform the MixColumns step.
	AddRoundKey(state,&key[56]);
	InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[52]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[48]);InvMixColumns(state);

	InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[44]);InvMixColumns(state);
	InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[40]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[36]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[32]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[28]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[24]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[20]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[16]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[12]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[8]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[4]);InvMixColumns(state);
    InvShiftRows(state);InvSubBytes(state);AddRoundKey(state,&key[0]);

    // Copy the state to the output array
    out[0] = state[0][0];
    out[1] = state[1][0];
    out[2] = state[2][0];
    out[3] = state[3][0];
    out[4] = state[0][1];
    out[5] = state[1][1];
    out[6] = state[2][1];
    out[7] = state[3][1];
    out[8] = state[0][2];
    out[9] = state[1][2];
    out[10] = state[2][2];
    out[11] = state[3][2];
    out[12] = state[0][3];
    out[13] = state[1][3];
    out[14] = state[2][3];
    out[15] = state[3][3];
}

#else
void SubBytes_ASM(uchar state[][4]);

void InvSubBytes_ASM(uchar state[][4]);

void ShiftRows_ASM(uchar state[][4]);

void InvShiftRows_ASM(uchar state[][4]);

void MixColumns_ASM(uchar state[][4]);

void InvMixColumns_ASM(uchar state[][4]);

uint SubWord_ASM(uint word);

void KeyExpansion_ASM(uchar key[], uint w[]);

void encrypt_ASM(uchar in[], uchar out[], uint key[]);

void decrypt_ASM(uchar in[], uchar out[], uint key[]);

#endif



