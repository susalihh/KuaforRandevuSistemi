<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="KuaforRandevuSistemi.pages.manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Bilgilerim
             <table>
                 <tr>
                     <td colspan="2">Kuaför Adı</td>
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2">Telefon </td>
                     <td>
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2">Email </td>
                     <td>
                         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2">Adres </td>
                     <td>
                         <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2">Açıklama </td>
                     <td>
                         <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="3">
                         <asp:Button ID="Button4" runat="server" Height="26px" Text="Bilgileri Getir" Width="171px" OnClick="Button4_Click" />
                         <asp:Button ID="Button1" runat="server" Height="26px" Text="Güncelle" Width="171px" OnClick="Button1_Click" />
                     </td>
                 </tr>
             </table>
            <table>

                <tr>
                    <td>randevu talepleri
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="Seç">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="randevu_id" InsertVisible="False" SortExpression="randevu_id">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("randevu_id") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("randevu_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="kuafor_id" HeaderText="kuafor_id" SortExpression="kuafor_id" />
                                <asp:BoundField DataField="kullanici_id" HeaderText="kullanici_id" SortExpression="kullanici_id" />
                                <asp:BoundField DataField="kullanici_telefon" HeaderText="kullanici_telefon" SortExpression="kullanici_telefon" />
                                <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                                <asp:BoundField DataField="Saat" HeaderText="Saat" SortExpression="Saat" />
                                <asp:CheckBoxField DataField="Talep" HeaderText="Talep" SortExpression="Talep" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [randevular] WHERE ([kuafor_id] = @kuafor_id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="kuafor_id" SessionField="kullanici_id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>

                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" Height="26px" Text="Onayla" Width="171px" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Height="26px" Text="Ret" Width="171px" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
