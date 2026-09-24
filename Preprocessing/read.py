# 以二进制模式读取BIN文件
file_path = "./bin/ssssm/0_ssssm_B_colptr.bin"
with open(file_path, "rb") as f:
   data = f.read()
# 输出前16字节的十六进制表示
print("前16字节:", data[-16:].hex())
print(len(data)/8)
