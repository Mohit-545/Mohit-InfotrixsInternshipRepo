<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<body>
		<h1 style="color: blue; text-align: center">Welcome to Currency Convertor App</h1><br><br>
		
		<div align="center">
			<frm:form action="getResult" modelAttribute="curr">
				<table border="1" style="color:white;text-align: center;font-weight: bold;font-size: large;" bgcolor="red" >
					<tr>
						<td>Currency From ::</td>
						<td><frm:select path="fromCode">
										<option value="">----- Select Currency -----</option><option value="INR">Indian Rupees</option><option value="CAD">Canadian Dollar</option><option value="EUR">Euro</option>
										<option value="HKD">Hong Kong Dollar</option><option value="USD">United States DollaR</option><option value="AUD">Australia Dollar</option><option value="GBP">Great Britain Pound</option>
										<option value="JPY">Japan Yen</option><option value="CHF">Switzerland Franc</option><option value="AFN">Afghanistan Afghani</option><option value="ATS">Austria Schilling</option><option value="BEF">Belgium Franc</option>
										<option value="AZN">Azerbaijan New Manat</option><option value="BSD">Bahamas Dollar</option><option value="BHD">Bahrain Dinar</option><option value="BDT">Bangladesh Taka</option><option value="BBD">Barbados Dollar</option><option value="COP">Colombia Peso</option>
										<option value="BTN">Bhutan Ngultrum</option><option value="BRL">Brazil Real</option><option value="BGN">Bulgaria Lev</option><option value="KHR">Cambodia Riel</option><option value="CNY">China Yuan/Renminbi</option><option value="BYR">Belarus Ruble</option>
										<option value="CRC">Costa Rica Colon</option><option value="HRK">Croatia Kuna</option><option value="CUP">Cuba Peso</option><option value="CZK">Czech Koruna</option><option value="DKK">Denmark Krone</option><option value="XCD">East Caribbean Dollar</option>
										<option value="EGP">Egypt Pound</option><option value="FJD">Fiji Dollar</option><option value="DMK">Germany Mark</option><option value="GHS">Ghana New Cedi</option><option value="GRD">Greece Drachma</option><option value="GTQ">Guatemala Quetzal</option>
										<option value="HUF">Hungary Forint</option><option value="ISK">Iceland Krona</option><option value="IDR">Indonesia Rupiah</option><option value="IRR">Iran Rial</option><option value="IQD">Iraq Dinar</option><option value="IED">Ireland Pound</option>
										<option value="ILS">Israel New Shekel</option><option value="ITL">Italy Lira</option><option value="JMD">Jamaica Dollar</option><option value="JOD">Jordan Dinar</option><option value="KZT">Kazakhstan Tenge</option><option value="KES">Kenya Shilling</option>
										<option value="KWD">Kuwait Dinar</option><option value="KGS">Kyrgyzstan Som</option><option value="LAK">Laos Kip</option><option value="LBP">Lebanon Pound</option><option value="LYD">Libya Dinar</option><option value="MOP">Macau Pataca</option>
										<option value="MYR">Malaysia Ringgit</option><option value="MYR">Maldives Rufiyaa</option><option value="MUR">Mauritius Rupee</option><option value="MXN">Mexico Peso</option><option value="MNT">Mongolia Tugrik</option><option value="MAD">Morocco Dirham</option>
										<option value="MZN">Mozambique New Metical</option><option value="MMK">Myanmar Kyat</option><option value="NAD">Namibia Dollar</option><option value="NPR">Nepal Rupee</option><option value="NLG">Netherlands Guilder</option><option value="NZD">New Zealand Dollar</option>
										<option value="NGN">Nigeria Naira</option><option value="KPW">North Korea Won</option><option value="NOK">Norway Kroner</option><option value="RON">Romania New Lei</option><option value="RUB">Russia Rouble</option><option value="SAR">Saudi Arabia Riyal</option>
										<option value="PLN">Poland Zloty</option><option value="PTE">Portugal Escudo</option><option value="QAR">Qatar Rial</option><option value="OMR">Oman Rial</option><option value="PKR">Pakistan Rupee</option><option value="PHP">Philippines Peso</option>
										<option value="RSD">Serbia Dinar</option><option value="SGD">Singapore Dollar</option><option value="SKK">Slovakia Koruna</option><option value="SIT">Slovenia Tolar</option><option value="SBD">Solomon Islands Dollar</option><option value="SOS">Somali Shilling</option>
										<option value="ZAR">South Africa Rand</option><option value="KRW">South Korea Won</option><option value="ESP">Spain Peseta</option><option value="LKR">Sri Lanka Rupee</option><option value="SEK">Sweden Krona</option><option value="CHF">Switzerland Franc</option>
										<option value="SYP">Syria Pound</option><option value="TWD">Taiwan Dollar</option><option value="TZS">Tanzania Shilling</option><option value="THB">Thailand Baht</option><option value="TTD">Trinidad/Tobago Dollar</option><option value="TND">Tunisia Dinar</option>
										<option value="TRY">Turkish New Lira</option><option value="TMM">Turkmenistan Manat</option><option value="UGX">Uganda Shilling</option><option value="UAH">Ukraine Hryvnia</option><option value="AED">United Arab Emirates Dirham</option><option value="VEB">Venezuela Bolivar</option>
										<option value="VND">Vietnam Dong</option><option value="YER">Yemen Rial</option><option value="ZMK">Zambia Kwacha</option><option value="ZWD">Zimbabwe Dollar</option>
								</frm:select>
						</td>
					</tr>
					<tr>
						<td>Currency To ::</td>
						<td><frm:select path="toCode">
										<option value="">----- Select Currency -----</option><option value="INR">Indian Rupees</option><option value="CAD">Canadian Dollar</option><option value="EUR">Euro</option>
										<option value="HKD">Hong Kong Dollar</option><option value="USD">United States DollaR</option><option value="AUD">Australia Dollar</option><option value="GBP">Great Britain Pound</option>
										<option value="JPY">Japan Yen</option><option value="CHF">Switzerland Franc</option><option value="AFN">Afghanistan Afghani</option><option value="ATS">Austria Schilling</option><option value="BEF">Belgium Franc</option>
										<option value="AZN">Azerbaijan New Manat</option><option value="BSD">Bahamas Dollar</option><option value="BHD">Bahrain Dinar</option><option value="BDT">Bangladesh Taka</option><option value="BBD">Barbados Dollar</option><option value="COP">Colombia Peso</option>
										<option value="BTN">Bhutan Ngultrum</option><option value="BRL">Brazil Real</option><option value="BGN">Bulgaria Lev</option><option value="KHR">Cambodia Riel</option><option value="CNY">China Yuan/Renminbi</option><option value="BYR">Belarus Ruble</option>
										<option value="CRC">Costa Rica Colon</option><option value="HRK">Croatia Kuna</option><option value="CUP">Cuba Peso</option><option value="CZK">Czech Koruna</option><option value="DKK">Denmark Krone</option><option value="XCD">East Caribbean Dollar</option>
										<option value="EGP">Egypt Pound</option><option value="FJD">Fiji Dollar</option><option value="DMK">Germany Mark</option><option value="GHS">Ghana New Cedi</option><option value="GRD">Greece Drachma</option><option value="GTQ">Guatemala Quetzal</option>
										<option value="HUF">Hungary Forint</option><option value="ISK">Iceland Krona</option><option value="IDR">Indonesia Rupiah</option><option value="IRR">Iran Rial</option><option value="IQD">Iraq Dinar</option><option value="IED">Ireland Pound</option>
										<option value="ILS">Israel New Shekel</option><option value="ITL">Italy Lira</option><option value="JMD">Jamaica Dollar</option><option value="JOD">Jordan Dinar</option><option value="KZT">Kazakhstan Tenge</option><option value="KES">Kenya Shilling</option>
										<option value="KWD">Kuwait Dinar</option><option value="KGS">Kyrgyzstan Som</option><option value="LAK">Laos Kip</option><option value="LBP">Lebanon Pound</option><option value="LYD">Libya Dinar</option><option value="MOP">Macau Pataca</option>
										<option value="MYR">Malaysia Ringgit</option><option value="MYR">Maldives Rufiyaa</option><option value="MUR">Mauritius Rupee</option><option value="MXN">Mexico Peso</option><option value="MNT">Mongolia Tugrik</option><option value="MAD">Morocco Dirham</option>
										<option value="MZN">Mozambique New Metical</option><option value="MMK">Myanmar Kyat</option><option value="NAD">Namibia Dollar</option><option value="NPR">Nepal Rupee</option><option value="NLG">Netherlands Guilder</option><option value="NZD">New Zealand Dollar</option>
										<option value="NGN">Nigeria Naira</option><option value="KPW">North Korea Won</option><option value="NOK">Norway Kroner</option><option value="RON">Romania New Lei</option><option value="RUB">Russia Rouble</option><option value="SAR">Saudi Arabia Riyal</option>
										<option value="PLN">Poland Zloty</option><option value="PTE">Portugal Escudo</option><option value="QAR">Qatar Rial</option><option value="OMR">Oman Rial</option><option value="PKR">Pakistan Rupee</option><option value="PHP">Philippines Peso</option>
										<option value="RSD">Serbia Dinar</option><option value="SGD">Singapore Dollar</option><option value="SKK">Slovakia Koruna</option><option value="SIT">Slovenia Tolar</option><option value="SBD">Solomon Islands Dollar</option><option value="SOS">Somali Shilling</option>
										<option value="ZAR">South Africa Rand</option><option value="KRW">South Korea Won</option><option value="ESP">Spain Peseta</option><option value="LKR">Sri Lanka Rupee</option><option value="SEK">Sweden Krona</option><option value="CHF">Switzerland Franc</option>
										<option value="SYP">Syria Pound</option><option value="TWD">Taiwan Dollar</option><option value="TZS">Tanzania Shilling</option><option value="THB">Thailand Baht</option><option value="TTD">Trinidad/Tobago Dollar</option><option value="TND">Tunisia Dinar</option>
										<option value="TRY">Turkish New Lira</option><option value="TMM">Turkmenistan Manat</option><option value="UGX">Uganda Shilling</option><option value="UAH">Ukraine Hryvnia</option><option value="AED">United Arab Emirates Dirham</option><option value="VEB">Venezuela Bolivar</option>
										<option value="VND">Vietnam Dong</option><option value="YER">Yemen Rial</option><option value="ZMK">Zambia Kwacha</option><option value="ZWD">Zimbabwe Dollar</option>
								</frm:select>
						</td>
					</tr>
					</tr>
						<td>Enter Amount ::</td>
						<td><frm:input path="amount"/></td>
					</tr>
					<tr>
						<td><input type="submit" value="Get Result"></td>
						<td><input type="reset" value="Cancel"></td>
					</tr>
				</table>
			</frm:form>
		</div>
		
</body>
</html>