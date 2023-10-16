import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link, useParams } from 'react-router-dom'
// import ProfileBg from '../../assets/slider1.jpeg'
// import serviceData from '../../Data/ServiceData'

const ServiceDetail = () => {
    const { id } = useParams();
    const Id = parseInt(id);
    const [data, setData] = useState([]);
    const [data1, setData1] = useState([]);
    const [ global, setGlobal] = useState([]);

    const AboutData = async () => {
        try {
            const response = await axios.get(
                `http://127.0.0.1:8000/api/navigations/`
            );

            const DocumentData = response.data.filter(
                (item) => item.status === "Publish" && item.page_type === "Service"
            );
            setData(DocumentData[0]); // Assuming you want to slice the filtered data
            // }
            // if (response.data) {
            const Document1Data = response.data.filter(
                (item) => item.status === "Publish" && item.page_type === "ServiceData"
            );
            setData1(Document1Data.find(data => data.id === Id)); 

            const response1 = await axios.get('http://127.0.0.1:8000/api/globals/');
            // Handle the response data here
            response1.data && setGlobal(response1.data[0]);

        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    useEffect(() => {
        // Axios GET request to fetch data
        AboutData();
    }, []);
    // console.log(data)
    return (
        <>
            {/* ----- Top Part ------ */}
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={data.bannerimage} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-90 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data1.name}</h3>
                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="/">
                                {data1.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="/service">
                                {data1.meta_title}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm font-semibold text-orange truncate" aria-current="page">
                            {data1.meta_keyword}
                        </li>
                    </ol>
                </div>
            </div>

            <div>
                <div className='container py-16'>
                    <div className='text-xl font-semibold'>{data1.name}</div>
                    <div className='text-xl pt-4' dangerouslySetInnerHTML={{ __html: data1.short_desc }}></div>
                </div>
            </div>


            <div className='container'>
                <div className='flex justify-center'>
                    {global && <h3 className='text-black text-4xl border-b-4 border-red pb-2'>{global.Sitecontactdetail}</h3>}
                </div>
                <div className='w-full py-16'>
                    <div className='container'>
                        <div className='w-full flex flex-col gap-5 xl:flex-row'>
                            <div className='xl:w-1/3 flex xl:flex-col items-center gap-4'>
                                <div className='flex justify-center items-center rounded-full w-16 h-16 bg-red'>
                                    <i className="fa-solid fa-phone text-2xl text-white"></i>
                                </div>
                                {global && <p className='text-gray-900 text-lg'>{global.Sitecontact}</p>}
                            </div>
                            <div className='xl:w-1/3 flex xl:flex-col items-center gap-4'>
                                <div className='flex justify-center items-center rounded-full w-16 h-16 bg-red'>
                                    <i className="fa-solid fa-envelope text-2xl text-white"></i>
                                </div>
                                {global && <p className='text-gray-900 text-lg'>{global.Siteaddress1}</p>}
                            </div>
                            <div className='xl:w-1/3 flex xl:flex-col items-center gap-4'>
                                <div className='flex justify-center items-center rounded-full w-16 h-16 bg-red'>
                                    <i className="fa-solid fa-location-dot text-2xl text-white"></i>
                                </div>
                                {global && <p className='text-gray-900 text-lg'>{global.Siteaddress2}</p>}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default ServiceDetail