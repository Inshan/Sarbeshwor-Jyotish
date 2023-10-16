import React from 'react'
import axios from 'axios'
import { Link } from "react-router-dom"
import { useState, useEffect } from 'react'

function Footer() {

    const [data, setData] = useState()

    const headerData = async () => {
        try {
            const response = await axios.get('http://127.0.0.1:8000/api/globals/');
            // Handle the response data here
            response.data && setData(response.data[0]);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    }
    useEffect(() => {
        // Axios GET request to fetch data
        headerData();

    }, []);
    return (
        <>
            <div className='bg-lightCream py-16'>
                <div className='container flex flex-col items-start gap-10 md:flex-col xl:flex-nowrap md:gap-2 xl:gap-10 xl:flex-row'>

                    <div className='flex flex-col justify-center items-start gap-4 text-white md:w-full xl:w-2/4 md:items-center xl:items-start'>
                        <Link to='/'>
                            <div className='relative w-80 h-14'>
                                <img src={data && data.logo} alt="" className='absolute w-full h-full object-contain object-left' />
                            </div>
                        </Link>                        
                        <p className='tex-base w-3/4 text-start text-red md:text-center xl:text-start'>{data && data.Sitedescription}</p>
                    </div>


                    <div className='flex flex-col w-full md:justify-around md:flex-row gap-10 md:gap-0'>
                        <div className='flex flex-col gap-4 md:w-2/5 xl:w-2/4'>
                            <div className='flex'>
                                <p className='text-2xl text-red border-b border-orange text-center'>{data && data.Sitecontactdetail}</p>
                            </div>


                            <div className='flex items-center gap-2'>
                                <div className='w-8 h-8 bg-red flex justify-center items-center rounded-full'>
                                    <i className="fa-solid fa-location-dot text-white text-md"></i>
                                </div>

                                <p className='text-red text-lg'>{data && data.Siteaddress}</p>
                            </div>

                            <div className='flex items-center gap-2'>
                                <div className='w-8 h-8 bg-red flex justify-center items-center rounded-full'>
                                    <i className="fa-regular fa-paper-plane  text-md text-white"></i>
                                </div>
                                <p className='text-red'>{data && data.Siteemail}</p>
                            </div>

                            <div className='flex items-center gap-2'>
                                <div className='w-8 h-8 bg-red flex justify-center items-center rounded-full'>
                                    <i className="fa-solid fa-phone-volume  text-md text-white"></i>
                                </div>
                                <p className='text-red'>{data && data.Sitecontact}</p>
                            </div>
                        </div>

                        <div className='flex flex-col gap-4 md:w-1/4 xl:w-1/4'>
                            <div className='flex'>
                                <p className='text-2xl text-red border-b border-orange text-center'>{data && data.Sitebox}</p>
                            </div>
                            <ul className='flex flex-col gap-4'>
                                <Link to="/dailyreading"><li className='transition duration-300 text-red hover:text-orange hover:translate-x-2'>{data && data.Sitelink1}</li> </Link>
                                <Link to="/profile"><li className='transition duration-300 text-red hover:text-orange hover:translate-x-2'>{data && data.Sitelink2}</li></Link>
                                <Link to="/service"><li className='transition duration-300 text-red hover:text-orange hover:translate-x-2'>{data && data.Sitelink3}</li></Link>
                                <Link to="/course"><li className='transition duration-300 text-red hover:text-orange hover:translate-x-2'>{data && data.Sitelink4}</li></Link>
                                <Link to="/appointment"><li className='transition duration-300 text-red hover:text-orange hover:translate-x-2'>{data && data.Sitelink5}</li></Link>

                                {/* <li className='text-white'><i className="fa-solid fa-arrow-right text-sm pe-8 text-orange"></i>My Career Horoscopes</li> */}
                            </ul>
                        </div>
                    </div>

                    <div className='flex flex-col gap-4 md:w-full xl:w-1/4 md:pt-5 items-center'>
                        <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2F10Astro%2F&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
                            className="w-80 h-32" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                    </div>




                </div>
            </div>
            <div className='bg-red w-full text-center text-white py-2 text-sm'>
                <p>Copyright@Sarbeswar Sanstha Nepal 2023</p>
            </div>
        </>
    )
}

export default Footer