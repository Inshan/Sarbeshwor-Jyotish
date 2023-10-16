import React, { useState, useEffect } from 'react'
import { Link } from "react-router-dom";
import axios from 'axios'
import ProfileBg from '../../assets/slider1.jpeg'
import serviceData from '../../Data/ServiceData'
const Service = () => {
    const [data, setData] = useState([]);
    const [data1, setData1] = useState([]);


    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );

            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Service"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data
            }
            if (response.data) {
                const Document1Data = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "ServiceData"
                );
                setData1(Document1Data); // Assuming you want to slice the filtered data
            }
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    useEffect(() => {
        // Axios GET request to fetch data
        AboutData();
    }, []);
    return (
        <>
            {/* ----- Top Part ------ */}
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={data.bannerimage} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-90 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data.title}</h3>
                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="/">
                                {data.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="#">
                                {data.meta_title}
                                {/* <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg> */}
                            </Link>
                        </li>
                        {/* <li className="text-sm font-semibold text-orange truncate" aria-current="page">
                            {data.meta_keyword}
                        </li> */}
                    </ol>
                </div>
            </div>

            {/* ----- Bottom Part------ */}
            <div className='container py-16'>
                <div className='flex gap-8 flex-col justify-center md:flex-row md:flex-wrap'>
                    {data1.map((item) => (
                        <div className='h-96 bg-white drop-shadow-xl p-4 flex flex-col justify-start items-center
                         group'>
                            <div className='w-80 relative h-80  overflow-hidden'>
                                <img src={item.slider_image} alt="" className='absolute w-full h-full' />
                            </div>
                            <div className='flex flex-col items-center pt-5'>
                                <div className='flex justify-start'>
                                    <h3 className='xl:text-3xl text-2xl border-b border-orange pb-2'>{item.name}</h3>
                                </div>
                            </div>
                            <div className='w-full flex justify-center pt-8'>
                                <Link to={`/servicedetail/${item.id}`}>
                                    <button className='bg-red text-base p-2 xl:py-1 xl:px-2 xl:text-xl text-white rounded-2xl'>{item.title}</button>
                                </Link>
                            </div>
                        </div>
                    ))}
                </div>
            </div>
        </>
    )
}

export default Service

