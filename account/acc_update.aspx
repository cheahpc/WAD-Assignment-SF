﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="acc_update.aspx.cs" Inherits="WAD_Assignment_SF.account.acc_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <link rel="stylesheet" href="../css/acc_update.css">
    <link rel="stylesheet" href="../css/global.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Outer Container -->
    <div class="container-fluid bg justify-content-center">
        <div class="row spacer"></div>
        <!-- Inner Container -->
        <div class="inner_container mx-auto">
            <div class="row align-items-center me-5" style="height: 180px;">
                <!-- Row 1 Input -->
                <div class="row ps-4 mx-auto justify-content-center">
                    <!-- Left Personal Details -->
                    <div class="col-5 text-xl font-bolder">
                        <h1 class="font-bolder text-xxl color-dyellow">Profile Detail</h1>

                        <br>
                        <!-- Row 1 First Name -->
                        <div class="row">
                            <asp:Label class="row" ID="lblFullName" runat="server" Text="Full Name"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtFullName" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col p-0 text-danger" ID="vldtFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Your name is required." ToolTip="Name" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 2 User Name -->
                        <div class="row">
                            <asp:Label class="row" ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtUserName" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-auto p-0 text-danger" ID="vldtUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name is required." ToolTip="User Name" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 3 Contact -->
                        <div class="row">
                            <asp:Label class="row" ID="lblContact" runat="server" Text="Contact"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtContact" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtContact" runat="server" ControlToValidate="txtContact" ErrorMessage="Cotact Number is required." ToolTip="Contact without '-'" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 4 Email -->
                        <div class="row">
                            <asp:Label class="row" ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtEmail" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ToolTip="Contact without '-'" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 5 Password -->
                        <div class="row">
                            <asp:Label class="row" ID="lblPwd" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtPwd" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password is required." ToolTip="Contact without '-'" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 6 Confirm Password -->
                        <div class="row">
                            <asp:Label class="row" ID="lblCfmPwd" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtCfmPwd" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCfmPwd" ErrorMessage="Confirm password is requried." ToolTip="Re-type your password" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="vldtComparePwd" ControlToValidate="txtCfmPwd" ControlToCompare="txtPwd" Operator="Equal" Type="String" runat="server" ErrorMessage="Password not match!"></asp:CompareValidator>
                        </div>
                        <!-- Row 7 Gender -->
                        <div class="row">
                            Gender<br>
                            <asp:RadioButtonList class="btn-group" ID="radBtnGender" runat="server" BorderStyle="None" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="645px">
                                <asp:ListItem class="rad" Value="M">Male</asp:ListItem>
                                <asp:ListItem class="rad" Value="F">Female</asp:ListItem>
                                <asp:ListItem class="rad" Selected="True" Value="S">Secret</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <br>
                        <!-- Row 8 DoB -->
                        <div class="row">
                            <asp:Label class="row" ID="lblDoB" runat="server" Text="Date Of Birth"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtDoB" placeholder="dd.mm.yyyy" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtDoB" runat="server" ControlToValidate="txtDoB" ErrorMessage="Email is required." ToolTip="Contact without '-'" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <!-- Right Address Details -->
                    <div class="col-5 text-xl font-bolder">
                        <h1 class="font-bolder text-xxl color-dyellow">Address</h1>
                        <br>
                        <!-- Row 1 Unit -->
                        <div class="row">
                            <asp:Label class="row" ID="lblUnit" runat="server" Text="Unit"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtUnit" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtUnit" runat="server" ControlToValidate="txtUnit" ErrorMessage="Unit is required." ToolTip="Unit or house number" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 2 Building -->
                        <div class="row">
                            <asp:Label class="row" ID="lblBuilding" runat="server" Text="Building"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtBuilding" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtBuilding" runat="server" ControlToValidate="txtBuilding" ErrorMessage="Building is required." ToolTip="Building name" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 3 Street -->
                        <div class="row">
                            <asp:Label class="row" ID="lblStreet" runat="server" Text="Street"></asp:Label>
                            <asp:TextBox class="row-4 rounded" ID="txtStreet" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtStreet" runat="server" ControlToValidate="txtStreet" ErrorMessage="Street is required." ToolTip="Street name" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </div><br>
                        <!-- Row 4 Postcode -->
                        <div class="row">
                            <asp:Label class="row" ID="lblPostcode" runat="server" Text="Postcode"></asp:Label>
                            <asp:TextBox class="row-9 rounded" ID="txtPostcode" runat="server" Width="320px"></asp:TextBox>
                            <asp:RequiredFieldValidator class="col-1 p-0 text-danger" ID="vldtPostcode" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Postcode is required." ToolTip="Postcode" ValidationGroup="updateProfile" Font-Bold="True">*</asp:RequiredFieldValidator>

                        </div><br>
                        <!-- Row 5 State -->
                        <div class="row">
                            <asp:Label class="row" ID="lblState" runat="server" Text="State"></asp:Label>
                            <asp:DropDownList class="row-3 rounded" ID="droplstState" Width="220px" runat="server">
                                <asp:ListItem Enabled="False" Selected="True" Value="0">- State -</asp:ListItem>
                                <asp:ListItem Value="Johor">Johor</asp:ListItem>
                                <asp:ListItem Value="Kedah">Kedah</asp:ListItem>
                                <asp:ListItem Value="Kelantan">Kelantan</asp:ListItem>
                                <asp:ListItem Value="Malacca">Malacca</asp:ListItem>
                                <asp:ListItem Value="Sembilan">Sembilan</asp:ListItem>
                                <asp:ListItem Value="Pahang">Pahang</asp:ListItem>
                                <asp:ListItem Value="Penang">Penang</asp:ListItem>
                                <asp:ListItem Value="Perak">Perak</asp:ListItem>
                                <asp:ListItem Value="Perlis">Perlis</asp:ListItem>
                                <asp:ListItem Value="Sabah">Sabah</asp:ListItem>
                                <asp:ListItem Value="Sarawak">Sarawak</asp:ListItem>
                                <asp:ListItem Value="Selangor">Selangor</asp:ListItem>
                                <asp:ListItem Value="Terengganu">Terengganu</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                    </div>
                </div>
                <div class="row" style="min-height: 100px;">

                </div>
                <!-- Row 2 buttons -->
                <div class="row justify-content-center">
                    <asp:Button class="col-3 m-3 font-bold text-xl btn btn-primary" ID="btnUpdate" runat="server" Text="Update" Height="60px" OnClick="btnUpdate_Click" />
                    <asp:Button class="col-2 m-3 font-bold text-xl btn btn-outline-danger" ID="btnDiscard" runat="server" Text="Discard" Height="60px" OnClick="btnDiscard_Click" />
                    <asp:Button class="col-2 m-3 font-bold text-xl btn btn-outline-danger" ID="btnLogout" runat="server" Text="Logout" Height="60px" OnClick="btnLogout_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
