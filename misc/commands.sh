# lệnh dịch
g++ -fdiagnostics-color=always -std=gnu++20 -O2 -g -static -Wall -Wextra -Warith-conversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_FORTIFY_SOURCE=2 -DLOCAL -fstack-protector
# kiểm tra sha1 để đảm bảo gõ template đúng
cpp -dD -P -fpreprocessed file_name | tr -d '[:space:]'| sha1sum | cut -c-8