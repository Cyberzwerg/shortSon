# shortSon
Compactify your JSON data

This little project allows you to save a few letters when transferring arrays of objects as JSON:

Example: 
```json
	
	[
	    {
	        "name": "John",
	        "lastName": "Doe",
	        "age": 24,
	        "city": "Nowhere",
	        "planet": "Mars"
	    },
	    {
	        "name": "Jane",
	        "lastName": "Doe",
	        "age": 23,
	        "city": "Paris",
	        "planet": "Jupiter"
	    },
	    {
	        "name": "Max",
	        "lastName": "Mustermann",
	        "age": -4,
	        "city": "Here",
	        "planet": "That one"
	    },
	    {
	        "name": "Running",
	        "lastName": "outof",
	        "age": null,
	        "city": "ideas",
	        "planet": "that's bad"
	    },
	    {
	        "name": "one",
	        "lastName": "more",
	        "age": 4124,
	        "city": "should",
	        "planet": "work just fine"
	    }
	]
	
```

Gets converted to 

```json
	"headers": [
        "name",
        "lastName",
        "age",
        "city",
        "planet"
    ],
    "items": [
        [
            "John",
            "Doe",
            24,
            "Nowhere",
            "Mars"
        ],
        [
            "Jane",
            "Doe",
            23,
            "Paris",
            "Jupiter"
        ],
        [
            "Max",
            "Mustermann",
            -4,
            "Here",
            "That one"
        ],
        [
            "Running",
            "outof",
            null,
            "ideas",
            "that's bad"
        ],
        [
            "one",
            "more",
            4124,
            "should",
            "work just fine"
        ]
    ]
```

Which saves you 127 Characters (6.8% shorter).

This does not seem like a lot but if you do an example with 2048 items like in example.js you can already save 262122 characters.


