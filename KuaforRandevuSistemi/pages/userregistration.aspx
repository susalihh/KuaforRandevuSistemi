<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userregistration.aspx.cs" Inherits="KuaforRandevuSistemi.pages.userregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Kullanıcı Kayıt Formu
            <table>
                <tr>
                    <td colspan="2">AD</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Boş geçilemez" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">SOYAD</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">TELEFON</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ErrorMessage="Boş geçilemez" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">E-MAİL</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ErrorMessage="Boş geçilemez" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
                            ErrorMessage="Geçerli bir e-mail giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">ŞİFRE</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ErrorMessage="Boş geçilemez" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Kuaför</td>
                    <td>
                        <asp:CheckBox ID="cb" runat="server" />

                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="26px" Text="ONAYLA" Width="171px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
