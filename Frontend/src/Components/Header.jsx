import React, { useState, useEffect } from 'react'
import axios from 'axios'
import Home from '../Pages/Home/Home'
import Profile from '../Pages/AboutUs/Profile'
import Portfolio from '../Pages/AboutUs/Portfolio'
import Service from '../Pages/Service/Service'
import ServiceDetail from '../Pages/Service/ServiceDetail'
import Course from '../Pages/Course/Course'
import Contact from '../Pages/Contact/Contact'
import Photos from '../Pages/Photos/Photos'
import Video from '../Pages/Videos/Video'
import PhotoDetail from '../Pages/Photos/PhotoDetail'
import VideoDetail from '../Pages/Videos/VideoDetail'
import LatestNewsDetail from '../Pages/LatestNewsDetail/LatestNewsDetail'
import { Routes, Route, Link } from 'react-router-dom'
import DailyReading from '../Pages/ZodiacReading/DailyReading'
import WeeklyReading from '../Pages/ZodiacReading/WeeklyReading'
import MonthlyReading from '../Pages/ZodiacReading/MonthlyReading'
import YearlyReading from '../Pages/ZodiacReading/YearlyReading'
import Appointment from '../Pages/Appointment/Appointment'

function Header() {
    const [aboutUs, setAboutUs] = useState(false)
    const [zodiac, setZodiac] = useState(false)
    const [gallery, setGallery] = useState(false)
    const [nav, setNav] = useState(false)
    const [parentId, setParentId] = useState(null);

    const handleNav = () => {
        setNav(!nav)
    }
    const toggleAboutUs = () => {
        if (aboutUs == true) {
            setAboutUs(false)
        } else {
            setAboutUs(true)
            setZodiac(false)
            setGallery(false)
        }
    }
    const toggleZodiac = () => {
        if (zodiac == true) {
            setZodiac(false)
        } else {
            setZodiac(true)
            setAboutUs(false)
            setGallery(false)
        }
    }
    const toggleGallery = () => {
        if (gallery == true) {
            setGallery(false)
        } else {
            setGallery(true)
            setZodiac(false)
            setAboutUs(false)

        }
    }

    const [data, setData] = useState([])
    const [navigation, setNavigation] = useState([]);


    const headerData = async () => {
        try {
            const response = await axios.get('http://127.0.0.1:8000/api/globals/');
            // Handle the response data here
            response.data && setData(response.data[0]);

            // Fetch navigation data based on parentId and page_type
            const navigationResponse = await axios.get(
                "http://127.0.0.1:8000/api/navigations/",
                {
                    params: {
                        parent_id: parentId,      // Set the parentId as a parameter
                        page_type: "Group",       // Filter by page_type        
                    }
                }
            );

            if (navigationResponse.data) {
                const navigationData = navigationResponse.data.filter(
                    (item) => item.status === "Publish"
                );
                setNavigation(navigationData);
            }
        }
        catch (error) {
            console.error("Error fetching data:", error);
        }
    }
    useEffect(() => {
        // Axios GET request to fetch data
        headerData();
    }, [parentId]);

    return (

        <>
            {/* ---------- TOP HEADER --------- */}
            <div className='bg-red'>
                <div className='container flex flex-col gap-3 justify-between items-center py-4 xl:flex-row md:flex-row xl:py-2 xl:gap-0'>
                    <div className='flex flex-col xl:flex-row xl:gap-4 items-center'>
                        <div className='flex text-white items-center gap-2'>
                            <i className="fa-regular fa-envelope text-white"></i>
                            <a href='mailto:jyotishparamarsh3@gmail.com' className='text-sm'>{data.Siteemail}</a>
                        </div>

                        <div className='flex text-white items-center gap-2'>
                            <i className="fa-solid fa-phone text-white"></i>
                            <a href='tel: +977-984-9679838' className='text-sm'>{data.Sitecontact}</a>
                        </div>
                    </div>

                    <div className='flex gap-2'>
                        <div className='w-6 h-6 rounded-full bg-white flex justify-center items-center hover:opacity-70'>
                            <Link to='https://www.facebook.com/10Astro/'>
                                <i className="fa-brands fa-facebook-f text-red text-sm "></i>
                            </Link>
                        </div>

                        <div className='w-6 h-6 rounded-full bg-white flex justify-center items-center hover:opacity-70'>
                            <Link to='#'>
                                <i className="fa-brands fa-youtube text-red text-sm"></i>
                            </Link>
                        </div>

                        <div className='w-6 h-6 rounded-full bg-white flex justify-center items-center hover:opacity-70'>
                            <Link to='#'>
                                <i className="fa-brands fa-tiktok text-red text-sm"></i>
                            </Link>
                        </div>
                    </div>
                </div>
            </div>


            {/* ---------- NAV BAR --------- */}
            <div className={`bg-lightCream py-2 xl:py-0 w-full sticky top-0 left-0 z-40 drop-shadow-2xl`}>
                <div className='container flex justify-between items-center flex-wrap'>
                    <div className='text-xl font-medium text-red'>
                        <Link to='/'>
                            <div className='relative w-80 h-14'>
                                <img src={data.logo} alt="" className='absolute w-full h-full object-contain object-left' />
                            </div>
                        </Link>

                    </div>

                    <div className='xl:hidden lg:block md:block h-10' onClick={handleNav}>
                        {nav ? <i className="fa-solid fa-xmark text-red text-3xl"></i> : <i className="fa-solid fa-bars text-red text-2xl"></i>}
                    </div>

                    <nav className={`xl:block ${nav ? 'block' : 'hidden'}`}>
                        <ul className={`flex relative xl:flex-row md:flex-row  ${nav ? 'pl-[123px] md:pl-0 flex-col' : 'pl-0'}`}>

                            <Link to='/' onClick={handleNav}>
                                <li className='py-4 text-red md:hover:text-orange px-4 md:text-xl font-medium tracking-wider'>गृहपृष्ठ</li>
                            </Link>

                            {navigation.map((nav) => (
                                <React.Fragment key={nav.id} >
                                    {nav.id !== 11 && (
                                        <React.Fragment>
                                            {nav.id === 1 && (
                                                <Link
                                                    onMouseEnter={() => setAboutUs(true)}
                                                    onMouseLeave={() => setAboutUs(false)}
                                                >
                                                    <li className=' text-red p-4 group md:text-xl font-medium tracking-wider' onClick={toggleAboutUs}>{nav.name}<i className="fa-solid fa-angle-down text-sm"></i></li>
                                                    {aboutUs && (
                                                        <div className='md:absolute md:top-15 md:left-[75px] bg-red md:bg-white ps-2 pe-8 z-30 ms-4 md:ms-0 rounded-lg md:rounded-none'>
                                                            <ul>
                                                                {navigation[navigation?.findIndex(item => item?.id === 3)] && (
                                                                    <Link to='/profile' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl border-b text-white md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 3)].name}
                                                                        </li>
                                                                    </Link>
                                                                )}
                                                                {navigation[navigation?.findIndex(item => item?.id === 2)] && (
                                                                    <Link to='/portfolio' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl tracking-wider text-white md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 2)].name}
                                                                        </li>
                                                                    </Link>
                                                                )}

                                                            </ul>
                                                        </div>
                                                    )}
                                                </Link>
                                            )}

                                            {nav.id === 4 && (
                                                <Link
                                                    to='/service'
                                                    onClick={handleNav}
                                                >
                                                    <li className='text-red py-4 hover:text-orange px-4 md:text-xl font-medium tracking-wider'>
                                                        {nav.name}
                                                    </li>
                                                </Link>
                                            )}

                                            {nav.id === 10 && (
                                                <Link to='/course' onClick={handleNav}>
                                                    <li className='text-red py-4 hover:text-orange px-4 md:text-xl font-medium tracking-wider'>
                                                        {nav.name}
                                                    </li>
                                                </Link>
                                            )}

                                            {nav.id === 43 && (
                                                <Link
                                                    onMouseEnter={() => setZodiac(true)}
                                                    onMouseLeave={() => setZodiac(false)}
                                                >
                                                    <li className='text-red py-4 hover:text-orange px-4 md:text-xl font-medium tracking-wider' onClick={toggleZodiac}>
                                                        {nav.name}
                                                        <i className="fa-solid fa-angle-down text-sm"></i>
                                                    </li>
                                                    {zodiac && (
                                                        <div className='md:absolute md:top-15 md:left-[420px] py-2 ps-2 pe-8 z-30 bg-red md:bg-white ms-4 md:ms-0 rounded-lg md:rounded-none'>
                                                            <ul>
                                                                {navigation[navigation?.findIndex(item => item?.id === 44)] && (
                                                                    <Link to='/dailyreading' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl text-white tracking-wider border-b md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 44)].name}
                                                                        </li>
                                                                    </Link>
                                                                )}
                                                                {navigation[navigation?.findIndex(item => item?.id === 45)] && (
                                                                    <Link to='/weeklyreading' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl text-white tracking-wider border-b md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 45)].name}

                                                                        </li>
                                                                    </Link>
                                                                )}

                                                                {navigation[navigation?.findIndex(item => item?.id === 46)] && (
                                                                    <Link to='/monthlyreading' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl text-white tracking-wider border-b md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 46)].name}
                                                                        </li>
                                                                    </Link>
                                                                )}

                                                                {navigation[navigation?.findIndex(item => item?.id === 47)] && (
                                                                    <Link to='/yearlyreading' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl text-white tracking-wider md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 47)].name}

                                                                        </li>
                                                                    </Link>
                                                                )}
                                                            </ul>
                                                        </div>
                                                    )}
                                                </Link>
                                            )}

                                            {nav.id === 49 && (
                                                <Link
                                                    onMouseEnter={() => setGallery(true)}
                                                    onMouseLeave={() => setGallery(false)}
                                                >
                                                    <li className='text-red py-4 hover:text-orange px-4 md:text-xl font-medium tracking-wider' onClick={toggleGallery}>
                                                        {nav.name}
                                                        <i className="fa-solid fa-angle-down text-sm"></i>
                                                    </li>
                                                    {gallery && (
                                                        <div className='md:absolute md:top-15 md:left-[550px] py-2 ps-2 pe-8 z-30  bg-red md:bg-white ms-4 md:ms-0 rounded-lg md:rounded-none'>
                                                            <ul>
                                                                {navigation[navigation?.findIndex(item => item?.id === 50)] && (
                                                                    <Link to='/photos' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl  border-b tracking-wider text-white md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 50)].name}
                                                                        </li>
                                                                    </Link>
                                                                )}
                                                                {navigation[navigation?.findIndex(item => item?.id === 59)] && (

                                                                    <Link to='/video' onClick={handleNav}>
                                                                        <li className='p-2 md:hover:text-orange md:text-xl tracking-wider text-white md:text-black'>
                                                                            {navigation[navigation?.findIndex(item => item?.id === 59)].name}
                                                                        </li>
                                                                    </Link>
                                                                )}

                                                            </ul>
                                                        </div>
                                                    )}
                                                </Link>
                                            )}

                                            {nav.id === 79 && (
                                                <Link to='/contact' onClick={handleNav}>
                                                    <li className='text-red py-4 hover:text-orange px-4 md:text-xl font-medium tracking-wider'>
                                                        {nav.name}
                                                    </li>
                                                </Link>
                                            )}
                                        </React.Fragment>
                                    )}
                                </React.Fragment>
                            ))}
                        </ul>
                    </nav>

                </div>
            </div>
            <Routes>
                <Route path='/' element={<Home />} />
                <Route path='/profile' element={<Profile />} />
                <Route path='/portfolio' element={<Portfolio />} />
                <Route path='/service' element={<Service />} />
                <Route path='/servicedetail/:id' element={<ServiceDetail />} />
                <Route path='/photodetail/:id' element={<PhotoDetail />} />
                <Route path='/videodetail/:id' element={<VideoDetail />} />

                <Route path='/dailyreading' element={<DailyReading />} />
                <Route path='/weeklyreading' element={<WeeklyReading />} />
                <Route path='/monthlyreading' element={<MonthlyReading />} />
                <Route path='/yearlyreading' element={<YearlyReading />} />
                <Route path='/contact' element={<Contact />} />
                <Route path='/photos' element={<Photos />} />
                <Route path='/video' element={<Video />} />
                <Route path='/photodetail/:id' element={<PhotoDetail />} />
                <Route path='/videodetail/:id' element={<VideoDetail />} />
                <Route path='/newsdetail/:id' element={<LatestNewsDetail />} />
                <Route path='/course' element={<Course />} />
                <Route path='/appointment' element={<Appointment />} />
            </Routes>
        </>

    )
}

export default Header




