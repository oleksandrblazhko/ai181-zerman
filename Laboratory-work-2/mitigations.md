|№ загрози|MTMT-рекомендації з усунення загроз|
|---------|-----------------------------------|
|1|Consider using a standard authentication mechanism to identify the destination data store.|
|2|Be careful that your resource requests don't deadlock, and that they do timeout.|
|3|Consider using a standard authentication mechanism to identify the source data store.|
|4|Review authorization settings.|
|5|Consider if the function could work with less access to memory, such as passing data rather than pointers. Copy in data provided, and then validate it.|
|6|Consider using a standard authentication mechanism to identify the external entity.|
|7|Consider encrypting the data flow.|
|8|Consider using logging or auditing to record the source, time, and summary of the received data|
|9|Consider if the function could work with less access to memory, such as passing data rather than pointers. Copy in data provided, and then validate it.|
|10|Consider all paths and the way they handle data. Verify that all input is verified for correctness using an approved list input validation approach.|
|11|Consider using a standard authentication mechanism to identify the destination process.|
|12|Consider using a standard authentication mechanism to identify the source process.|
|13|The issue can only be resolved on the server side by requiring that all authenticated state-changing requests include an additional piece of secret payload (canary or CSRF token) which is known only to the legitimate web site and the browser and which is protected in transit through SSL/TLS.|
|14|Consider using a standard authentication mechanism to identify the source process.|
|15|Consider using a standard authentication mechanism to identify the destination process.|
|16|Consider all paths and the way they handle data. Verify that all input is verified for correctness using an approved list input validation approach.|
|17|Consider if the function could work with less access to memory, such as passing data rather than pointers. Copy in data provided, and then validate it.|
|18|Consider using logging or auditing to record the source, time, and summary of the received data.|
|19|Consider encrypting the data flow.|
|20|Consider if the function could work with less access to memory, such as passing data rather than pointers. Copy in data provided, and then validate it.|