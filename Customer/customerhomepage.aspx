<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="customerhomepage.aspx.cs" Inherits="freelancerfinal.Customer.customerhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="p-4">
            <div>
                <div>
                    <h1 class="text-xl font-calibri font-bold flex justify-center md:text-3xl mb-2">Utilize our Services and <span class="text-blue-500 ml-2">Earn Trust </span></h1>
                </div>

                <div class="flex space-x-2">
                    <div class="relative">
                        <asp:TextBox runat="server" CssClass="block bg-gray-200 w-[100px] px-3 py-2 border rounded-lg focus:ring focus:ring-indigo-200 focus:outline-none mt-3"></asp:TextBox>
                        <button class="absolute inset-y-0 left-0 pl-2 flex items-center text-sm leading-5 mt-2">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="size-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                                <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1 1 15 0Z" />
                            </svg>
                            <span class="pl-1 text-md">Mumbai</span>
                        </button>
                    </div>
                    <div class="relative">
                        <asp:TextBox runat="server" CssClass="bg-white w-[340px] md:w-[500px] px-3 py-2 border-2 rounded-lg focus:ring focus:ring-indigo-200 focus:outline-none mt-3" placeholder="Search Services"></asp:TextBox>
                        <button class="absolute inset-y-0 right-0 pr-3 flex items-center text-sm leading-5 mt-3">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="size-5">
                                <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
                            </svg>
                        </button>
                    </div>
                </div>
            </div>

            <div class="grid grid-cols-1 mt-4">
                <div class="bg-white w-full h-96 flex justify-center rounded-lg mt-3 shadow-lg p-0">
                    <div class="swiper w-full">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="../Assets/driver.jpg" alt="Driver" class="w-full h-full object-cover rounded-lg" />
                            </div>

                            <div class="swiper-slide">
                                <img  src="../Assets/driver.jpg" alt="Civil Engineer" class="w-full h-full object-cover rounded-lg" />
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>


            <div class="text-center mt-6">
                <h1 class="mt-4 md:text-2xl text-xl font-bold">Categories</h1>
            </div>
            <div class="grid grid-cols-2 gap-6 md:grid-cols-4  place-items-center mt-4  ">
                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/driver.png" class="w-10 h-10 ml-2 md:ml-3 " />
                        <h1 class="flex justify-center mt-3">Driver</h1>
                    </div>
                </div>

                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/painter.png" class="w-10 h-10 ml-4 md:ml-6 " />
                        <h1 class="flex justify-center mt-3">Painter</h1>
                    </div>
                </div>
                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/plumber.png" class="w-10 h-10 ml-4 md:ml-6 " />
                        <h1 class="flex justify-center mt-3">Plumber</h1>
                    </div>
                </div>
                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/carpenter.png" class="w-10 h-10 ml-6 md:ml-8 " />
                        <h1 class="flex justify-center mt-3">Carpenter</h1>
                    </div>
                </div>
                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/mechanic.png" class="w-10 h-10 ml-6 md:ml-8 " />
                        <h1 class="flex justify-center mt-3">Mechanic</h1>
                    </div>
                </div>
                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/engineer.png" class="w-10 h-10 ml-10 md:ml-12 " />
                        <h1 class="flex justify-center mt-3">Construction</h1>
                    </div>
                </div>
                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/engineer.png" class="w-10 h-10 ml-10 md:ml-12 " />
                        <h1 class="flex justify-center mt-3">Construction</h1>
                    </div>
                </div>
                <div class="bg-gray-100 shadow-lg hover:shadow-gray-400  rounded-lg p-5 w-[70%] text-center font-bold text-xl md:text-2xl text-blue-500 flex justify-center">   
                    <div class="flex flex-col justify-center">
                        <img src="../Assets/engineer.png" class="w-10 h-10 ml-10 md:ml-12 " />
                        <h1 class="flex justify-center mt-3">Construction</h1>
                    </div>
                </div>
            </div>
            <div class="text-center mt-6">
                <h1 class="mt-4 md:text-2xl text-xl font-bold">Services</h1>
            </div>
            <div class="md:flex md:space-x-6  md:justify-center mt-4 grid grid-cols-3 gap-4 place-items-center">
                <div>
                    <img src="../Assets/acrepair.jpg" class="w-[130px] md:w-[200px] h-[100px] md:h-[160px] rounded-lg" />
                    <p class="text-center mt-2">AC mechanic</p>
                </div>
                <div>
                    <img  src="../Assets/bikerepair.jpg" class="w-[130px] md:w-[200px] h-[100px] md:h-[160px] rounded-lg" />
                     <p class="text-center mt-2">Bike mechanic</p>
                </div>
                <div>
                    <img src="../Assets/carpenterservices.jpg" class="w-[130px] md:w-[200px] h-[100px] md:h-[160px] rounded-lg" />
                     <p class="text-center mt-2">Carpenting</p>
                </div>
                <div>
                    <img src="../Assets/carrepair.jpg" class="w-[130px] md:w-[200px] h-[100px] md:h-[160px] rounded-lg" />
                     <p class="text-center mt-2">Car Repair</p>
                </div>
                <div>
                    <img  src="../Assets/paintingservice.jpg" class="w-[130px] md:w-[200px] h-[100px] md:h-[160px] rounded-lg" />
                     <p class="text-center mt-2">Painting </p>
                </div>
                <div> 
                    <img src="../Assets/plumbingservice.jpg" class="w-[130px] md:w-[200px] h-[100px] md:h-[160px] rounded-lg" />
                     <p class="text-center mt-2">Plumbing</p>
                </div>

            </div>

            <div class="bg-gray-50 py-10 mt-10">
                <h2 class="text-center text-2xl font-bold mb-6">What Our Customers Say</h2>
                <div class="swiper w-full">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide text-center">
                            <p class="text-lg italic">"Amazing service! Highly recommend."</p>
                            <span class="block mt-2 text-blue-500 font-bold">- John Doe</span>
                        </div>
                        <div class="swiper-slide text-center">
                            <p class="text-lg italic">"Professional and reliable services."</p>
                            <span class="block mt-2 text-blue-500 font-bold">- Jane Smith</span>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>


            <div class="py-10 mt-10">
                <h2 class="text-center text-2xl font-bold mb-6">How It Works</h2>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <div class="text-center">
                        <div class="bg-blue-500 text-white w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">1</div>
                        <h3 class="text-xl font-bold">Choose a Service</h3>
                        <p class="mt-2">Browse and select the service you need.</p>
                    </div>
                    <div class="text-center">
                        <div class="bg-blue-500 text-white w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">2</div>
                        <h3 class="text-xl font-bold">Book Online</h3>
                        <p class="mt-2">Book your service instantly with just a few clicks.</p>
                    </div>
                    <div class="text-center">
                        <div class="bg-blue-500 text-white w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-4">3</div>
                        <h3 class="text-xl font-bold">Relax</h3>
                        <p class="mt-2">Sit back while our professionals handle the rest.</p>
                    </div>
                </div>
            </div>

        </div>


        <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script>

        const swiper = new Swiper('.swiper', {
            loop: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            autoplay: {
                delay: 3000,
            },
        });
    </script>
</asp:Content>
