function is_valid_word(word)
    url = "https://stdict.korean.go.kr/search/searchResult.do?&searchKeyword="..word
    data = Utils.getWebText(url)
    if string.find(data, "찾기 결과") then
        data = lsoup(data):select("ul.result"):select("font", 1)
        return data:text()
    else
        return nul
    end
end


function response(room, msg, sender, isGroupChat, replier, ImageDB, packageName)
 
end
