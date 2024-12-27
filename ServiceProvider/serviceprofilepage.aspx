<%@ Page Title="" Language="C#" MasterPageFile="~/ServiceProvider/ServiceProviderMasterPage.Master" AutoEventWireup="true" CodeBehind="serviceprofilepage.aspx.cs" Inherits="freelancerfinal.ServiceProvider.serviceprofilepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Content -->

    <div class="flex-1 flex flex-col">
        <!-- Top Bar -->
        <div class="bg-white shadow flex justify-between items-center px-6 py-4">
            <div>
                <button id="toggleSidebar" class="lg:hidden text-2xl">&#9776;</button>
            </div>
            <div class="text-xl font-bold">Dashboard</div>
            <div class="flex items-center">
                <div class="h-10 w-10 rounded-full mr-3 cursor-pointer">
                    <img src="../images/logo.png" />
                </div>
                <div>
                    <asp:Label ID="lblUserDetails" runat="server" CssClass="text-sm text-gray-700">

                    </asp:Label>
                </div>
            </div>
        </div>

        <div class=" flex justify-between mt-2 p-4">
            <h1 class="text-center font-bold text-2xl mt-3">Welcome to Your Profile</h1>
            <div>
                <asp:HiddenField ID="hfServiceRegisterId" runat="server" />

                <asp:Button ID="mydetails" runat="server" CssClass="bg-blue-500 text-white font-bold p-2 rounded-lg mt-2" Text="My Details" OnCommand="mydetails_Command" />
            </div>
        </div>

        <!-- Dashboard Content -->
        <asp:Panel runat="server" ID="mydetailsedit">
            <div class="bg-cream text-charcoal h-full mt-4">
                <div class="flex-1 md:p-0 lg:pt-8 lg:px-8 flex flex-col">
                    <div class="bg-cream-lighter p-4 shadow">
                        <div class="md:flex">
                            <%--Name--%>
                            <div class="md:flex-1 mt-2 md:px-3">
                                <div>
                                    <label class="block uppercase tracking-wide text-xs font-bold">Name</label>
                                    <asp:TextBox runat="server" ID="name" CssClass="w-full shadow-inner p-4 border-0" Text="Name" placeholder="Enter Your Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="md:flex">
                            <%--Mobile No--%>
                            <div class="md:flex-1 mt-2 mb:mt-0 md:px-3">
                                <div class="mb-4">
                                    <label class="block uppercase tracking-wide text-xs font-bold">Phone</label>
                                    <asp:TextBox ID="mobile" runat="server" CssClass="w-full shadow-inner p-4 border-0" Text="Mobile" placeholder="(+91) XXXXX XXXXX"></asp:TextBox>
                                </div>
                                <%--Email--%>
                                <div class="mb-4">
                                    <label class="block uppercase tracking-wide text-charcoal-darker text-xs font-bold">Email</label>
                                    <asp:TextBox ID="email" runat="server" CssClass="w-full shadow-inner p-4 border-0" Text="Email" placeholder="contact@acme.co"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="md:flex">
                            <%--Location--%>
                            <%-- <div class="md:flex-1 mt-2 md:px-3">
                            <div>
                                <label class="block uppercase tracking-wide text-xs font-bold">Location</label>
                                <asp:TextBox ID="location" runat="server" Cssclass="w-full shadow-inner p-4 border-0"  Text="Location" placeholder="Location"></asp:TextBox> 
                            </div>
                        </div>--%>
                        </div>


                        <%--save and cancel--%>

                        <div class="flex md:flex flex-row mt-4 justify-between">
                            <button
                                type="submit"
                                class="w-auto bg-gray-400 text-white py-2 px-4 rounded-lg text-[#19A2E6] transition duration-200 text-base ml-6">
                                Cancel
                            </button>
                            <asp:Button ID="updatebutton" runat="server" CssClass="w-auto bg-[#19A2E6] text-white py-2 px-4 rounded-lg text-[#19A2E6] transition duration-200 text-base mr-6" Text="Update" OnClick="updatebutton_Click" />

                        </div>



                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('toggleSidebar').addEventListener('click', function () {
                const sidebar = document.getElementById('sidebar');
                sidebar.classList.toggle('hidden-sidebar');
            });
        });
    </script>
</asp:Content>
