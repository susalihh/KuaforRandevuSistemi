<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hdregistration.aspx.cs" Inherits="KuaforRandevuSistemi.pages.hdregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             Kuaför Kayıt Formu
            <table>
                <tr>
                    <td colspan="2">KUAFÖR ADI</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Boş geçilemez" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>                 
                 <tr>
                    <td colspan="2">E-MAİL</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Boş geçilemez" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="Geçerli bir e-mail giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                <td colspan="2">ŞİFRE</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Boş geçilemez" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                    <td colspan="2">ADRES</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Boş geçilemez" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">AÇIKLAMA</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Boş geçilemez" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="26px" Text="ONAYLA" Width="171px"  />                          
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
