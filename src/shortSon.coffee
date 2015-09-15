
deflate = (array,headers,options) ->
	
	res = 
		headers: headers
		items: []

	for item in array
		thisItem = []
		for header in headers 
			if item[header]? then thisItem.push(item[header]) else thisItem.push(null)
		res.items.push(thisItem)
	return res 

inflate = (object,options) ->	
	result = []
	if object.headers? and object.items?
		for item in object.items 
			thisItem = {}
			for value,index in item
				thisItem[object.headers[index]]  = value
			result.push(thisItem)
	return result

module.exports = 
	inflate: inflate
	deflate: deflate