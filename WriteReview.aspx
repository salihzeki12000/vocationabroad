﻿<%@ Page Title="<%# GetTitle () %>" Language="C#" MasterPageFile="~/MasterPageNoCss.master"
    AutoEventWireup="true" EnableEventValidation="true" ValidateRequest="true" CodeFile="WriteReview.aspx.cs"
    Inherits="PropertyReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="Server">

    <script language="javascript" type="text/javascript">
        function Validate() {
            var vValue = true;
            rb1 = document.getElementById('ctl00_Content_rbnOne');
            rb2 = document.getElementById('ctl00_Content_rbnTwo');
            rb3 = document.getElementById('ctl00_Content_rbnThree');
            rb4 = document.getElementById('ctl00_Content_rbnFour');
            vFName = document.getElementById('ctl00_Content_txtFName');
            vLName = document.getElementById('ctl00_Content_txtLName');
            vComments = document.getElementById('ctl00_Content_txtComments');
            vMonth = document.getElementById('ctl00_Content_ddlMonth');
            vYear = document.getElementById('ctl00_Content_ddlYear');

            if (vFName.value == "") {
                alert('Please enter first name.');
                vValue = false;
            }
            if ((vLName.value == '') || (vLName.value == null)) {
                alert('Please enter last name.');
                vValue = false;
            }
            if (vMonth.value == 0) {
                alert('Please specify month.');
                vValue = false;
            }
            if (vYear.value == 0) {
                alert('Please specify year.');
                vValue = false;
            }
            if (vComments.value == "") {
                alert('Please enter comments.');
                vValue = false;
            }
            if ((rb1.checked == false) && (rb2.checked == false) && (rb3.checked == false) && (rb4.checked == false)) {
                alert('Please enter star rating.');
                vValue = false;
            }
            //        else {
            //            return true;
            //        }
            return vValue;
        }
        //-->
    </script>

    <br />
    <center>
        <div style="width: 95%">
            <%--<div style="width: 18%; float: right;">
                <div class="rtOuter" style="width: 96%; text-align: left;">
                    <div id="rtHead" runat="server" class="rtHeader">
                    </div>
                    <div id="divCitiesRt" runat="server" class="rtText">
                    </div>
                </div>
            </div>--%>
            <div style="width: 100%; min-height: 400px; float: left;">
                <div style="float: left; text-align: left;">
                    <asp:Label ID="lblTitle" runat="server" Text="Review for " Font-Bold="True"></asp:Label><br />
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </div>
                <div style="float: right;">
                    <%-- <asp:HyperLink ID="hlkCountry" runat="server"></asp:HyperLink>,
                    <asp:HyperLink ID="hlkState" runat="server"></asp:HyperLink>,
                    <asp:HyperLink ID="hlkCity" runat="server"></asp:HyperLink>,--%>
                    <asp:HyperLink ID="hlkPropNum" runat="server"></asp:HyperLink>
                </div>
                <br />
                <br />
                <div id="divLftContent" style="width: 45%; float: left; text-align: left;">
                    <div style="float: left;">
                        <asp:Image ID="imgProperty" runat="server" />
                        <br />
                        <br />
                        <%-- star section--%>
                        <asp:RadioButton ID="rbnOne" runat="server" GroupName="star" /><img src="/images/star2.gif" /><br />
                        <asp:RadioButton ID="rbnTwo" runat="server" GroupName="star" /><img src="/images/star2.gif" /><img
                            src="/images/star2.gif" /><br />
                        <asp:RadioButton ID="rbnThree" runat="server" GroupName="star" /><img src="/images/star2.gif" /><img
                            src="/images/star2.gif" /><img src="/images/star2.gif" /><br />
                        <asp:RadioButton ID="rbnFour" runat="server" GroupName="star" /><img src="/images/star2.gif" /><img
                            src="/images/star2.gif" /><img src="/images/star2.gif" /><img src="/images/star2.gif" /><br />
                        <br />
                        Rate your overall stay!
                        <br />
                        <%--star section--%>
                    </div>
                </div>
                <div id="divRightContent" style="width: 55%; float: right;">
                    <div style="width: 98%; text-align: right;">
                        <table width="100%">
                            <tr>
                                <td align="left" style="width: 25%">
                                    First Name:
                                </td>
                                <td style="width: 75%" align="left">
                                    <asp:TextBox ID="txtFName" runat="server" Width="97%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    Last Name:
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtLName" runat="server" Width="97%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    Vacation Month:
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="ddlMonth" runat="server" Width="95px">
                                        <asp:ListItem Selected="True" Value="0">Month</asp:ListItem>
                                        <asp:ListItem Value="1">January</asp:ListItem>
                                        <asp:ListItem Value="2">February</asp:ListItem>
                                        <asp:ListItem Value="3">March</asp:ListItem>
                                        <asp:ListItem Value="4">April</asp:ListItem>
                                        <asp:ListItem Value="5">May</asp:ListItem>
                                        <asp:ListItem Value="6">June</asp:ListItem>
                                        <asp:ListItem Value="7">July</asp:ListItem>
                                        <asp:ListItem Value="8">August</asp:ListItem>
                                        <asp:ListItem Value="9">September</asp:ListItem>
                                        <asp:ListItem Value="10">October</asp:ListItem>
                                        <asp:ListItem Value="11">November</asp:ListItem>
                                        <asp:ListItem Value="12">December</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlYear" runat="server" Width="70px">
                                        <asp:ListItem Selected="True" Value="0">Year</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                             <tr>
                                <td align="left" valign="top">
                                    Phone Number:
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtPhone" runat="server" Width="97%"></asp:TextBox><br />
                                    <i>Your phone number will not be displayed.  We will call you if there are any questions 
                                    regarding your stay.</i>
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="lblCurInfo" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                    <br />
                    <div style="width: 100%;">
                        <div style="width: 100%; text-align: left;">
                            <%--<asp:Label ID="Label1" runat="server" Text="STEP TWO" Font-Bold="True" Font-Size="15px"></asp:Label>&nbsp;-Write
            Comments--%>
                        </div>
                        <asp:TextBox ID="txtComments" runat="server" Width="100%" Rows="10" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <%--<asp:Label ID="Label3" runat="server" Text="STEP THREE" Font-Bold="True" Font-Size="15px"></asp:Label>&nbsp;-Submit Comments--%>
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click"
                            OnClientClick="return Validate();" /><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter comments"
                            ControlToValidate="txtComments" Display="Dynamic" SetFocusOnError="True">Please enter comments</asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblInfo" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </center>
</asp:Content>