<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KuaforRandevuSistemi.pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Kuaför Randevu Sistemi</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Kullanıcı Girişi
       
            <table>
                <tr>
                    <td colspan="2">E-mail</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Şifre </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" Height="26px" Text="Giriş" Width="171px" OnClick="Button1_Click" />                        
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button2" runat="server" Height="26px" Text="Üye Ol" Width="171px" OnClick="Button2_Click" />                       
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
