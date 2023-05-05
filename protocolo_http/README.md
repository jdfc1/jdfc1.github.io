instalar o protocolo httpie no terminal do linux WSL

$ sudo apt install httpie

fazer uma requisição

$ http www.wikipedia.org

RESPOSTA [

HTTP/1.1 301 TLS Redirect
Connection: keep-alive
Content-Length: 0
Date: Fri, 14 Apr 2023 20:14:14 GMT
Location: https://www.wikipedia.org/
Server: Varnish
Server-Timing: cache;desc="int-front", host;desc="cp1077"
Set-Cookie: WMF-Last-Access=14-Apr-2023;Path=/;HttpOnly;secure;Expires=Tue, 16 May 2023 12:00:00 GMT
Set-Cookie: WMF-Last-Access-Global=14-Apr-2023;Path=/;Domain=.wikipedia.org;HttpOnly;secure;Expires=Tue, 16 May 2023 12:00:00 GMT
X-Cache: cp1077 int
X-Cache-Status: int-front
X-Client-IP: 45.174.218.7
X-Varnish: 810982315

]

fazer uma requisição

$ http --print=H www.wikipedia.org

RESPOSTA [

GET / HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Host: www.wikipedia.org
User-Agent: HTTPie/2.6.0

]

fazendo outra requisição

$ http PUT httpbin.org/put X-API-Token:123 name=Doug --print=H

RESPOSTA [

PUT /put HTTP/1.1
Accept: application/json, */*;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 16
Content-Type: application/json
Host: httpbin.org
User-Agent: HTTPie/2.6.0
X-API-Token: 123

]

$ http https://www.wikipedia.org/

cabeçalho e corpo

modo verboso
$ http https://www.wikipedia.org/ -v


$ http PUT httpbin.org/put X-API-Token:123 name=Doug --print=HB

$ http https://www.wikipedia.org/ --print=Hh

redirecionamentos, código 301 (indica que o endereço mudou de forma permanente)

$ http https://wikipedia.org
$ http https://wikipedia.org --follow --print=h

erros do servidor geram códigos da classe 500

erros de página não encontrada geram códigos da classe 404 

$ http https://www.wikipedia.org/ --print=Hh

códigos de 301, significa códigos de redirecionamento( moved permanently )

$ http http://mail.google.com/mail --print=Hh

302 por enquanto vc vai voltar a utilizar esse endereço

$ http http://www.gmail.com/login --print=Hh

código 404 - Not Found (usuario digitou algo errado que não existe)
solicitação do usuário não foi atendida por erro de digitação do usuário

código 401 - não autorizado

código 400 - mal requisitado

idempotência

1 e 0 são chamados número idempotentes

GET, POST, PUT, DELETE, PATCH, OPTIONS, TRACE and HEAD

Métodos Seguros e Não seguros

M. Seguros (não alteram o estado do servidor ou só leitura)
todos os métodos seguros são idempotentes

GET, HEAD and OPTIONS

M. Não seguros (que alteram o estado do servidor)
todos os métodos não seguros são Não idempotentes

POST, PUT, DELETE and PATCH
(um recurso post cria várias vezes o registro)

Criando um repositório no github.com com httpie

$ http -a cananeadouglas POST https://api.github.com/user/repos name='TESTE_httpie'

https://youtu.be/v2yXdMnRORQ
https://youtu.be/dagGES1XBfg
