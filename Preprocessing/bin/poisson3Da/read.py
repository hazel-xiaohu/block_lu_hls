# 以二进制模式读取BIN文件
file_path = "csr.BIN"
with open(file_path, "rb") as f:
   data = f.read()
# 输出前16字节的十六进制表示
print("前16字节:", data[:16].hex())
print(len(data)/4)
# 按字节解析
for i, byte in enumerate(data[:16]):
   print(f"字节 {i}: {byte}")
