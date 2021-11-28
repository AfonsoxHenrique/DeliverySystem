<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html  xml:lang="pt" lang="pt" name="menu">
 
<head>
	<title>GW Sistemas</title>
</head>
 
<body>
    
    <nav role="navigation" class="primary-navigation">
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Destinatário &dtrif;</a>
              <ul class="dropdownDest">
                <li><a href="destinatario/frmDestVIEW.html">Cadastrar</a></li>
                <li><a href="destinatario/jspListaDestinatario.jsp">Listar/Excluir</a></li>
              </ul>
            </li>
            <li><a href="#">Remetente &dtrif;</a>
                <ul class="dropdownReme">
                <li><a href="remetente/frmRemeVIEW.html">Cadastrar</a></li>
                <li><a href="remetente/jspRemeLista.jsp">Listar/Excluir</a></li>
              </ul>
            </li>
            <li><a href="#">Produto &dtrif;</a>
                <ul class="dropdownProd">
                <li><a href="produto/frmProdVIEW.html">Cadastrar</a></li>
                <li><a href="produto/jspProdLista.jsp">Listar/Excluir</a></li>
              </ul>
            </li>
            <li><a href="#">Entrega &dtrif;</a>
                <ul class="dropdownEntrega">
                <li><a href="entrega/frmEntregaVIEW.html">Cadastrar</a></li>
                <li><a href="entrega/jspListaEntrega.jsp">Listar/Excluir</a></li>
              </ul>
            </li>
          </ul>
        </nav
</body>
</html>
