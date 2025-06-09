import sys
import httpx

print(sys.path)

response = httpx.get("https://www.baidu.com")
print(response.status_code)  # 200
# print(response.headers)
# print(response.text)
