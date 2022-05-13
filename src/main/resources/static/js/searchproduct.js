           
            function createRequestObject() {
                var tmpXmlHttpObject;
                if (window.XMLHttpRequest) {
                        tmpXmlHttpObject = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
                }
            
                return tmpXmlHttpObject;
            }
            
            
            var http = createRequestObject();
            
            function makeGetRequest() {
                nm=document.frm.bank.value;
                http.open('get', 'searchproduct.jsp?prodno=' +search-box);
                http.onreadystatechange = processResponse;
                http.send(null);
            }
            
            function processResponse() {
                if(http.readyState == 4){
                    var response = http.responseText;
                    document.getElementById('search-box').innerHTML = response;
                }
            }
            