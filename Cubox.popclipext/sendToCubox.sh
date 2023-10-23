#! /bin/sh  
export API_ENDPOINT="${POPCLIP_OPTION_APIURL}"
export clipboard_content="${POPCLIP_TEXT}"
# 正则表达式来匹配URL的模式，匹配任何合法的URL
url_pattern="(https?|ftp|file)://[a-zA-Z0-9.-]+(/[a-zA-Z0-9/?=&]*)?"
# echo $clipboard_content
# 通过是否为http或https开头，如果是http或者https开头的则判定为URL
if [[ $clipboard_content =~ $url_pattern ]]; then
#    echo $clipboard_content
   curl --request POST \
      --url "$API_ENDPOINT" \
      --header "Content-Type: application/json" \
      --data-raw "{
          \"type\": \"url\",
          \"content\": \"$clipboard_content\"
      }"
else
    # echo "剪贴板内容是文本。"
    # echo $clipboard_content
    curl --request POST \
      --url "$API_ENDPOINT" \
      --header "Content-Type: application/json" \
      --data-raw "{
          \"type\": \"memo\",
          \"content\": \"$clipboard_content\"
      }"
fi
