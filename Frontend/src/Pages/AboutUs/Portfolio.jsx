import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link } from "react-router-dom"

// import ProfileBg from '../../assets/profileBg.webp'

const Portfolio = () => {
    const [data, setData] = useState([]);

    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );
            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Portfolio"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data
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
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-90 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data.name}</h3>
                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" href="/">
                                {data.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm">
                            <a className="flex items-center text-gray-500" href="#">
                                {data.title}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </a>
                        </li>
                        <li className="text-sm font-semibold text-orange truncate" aria-current="page">
                            {data.name}
                        </li>
                    </ol>
                </div>
            </div>
            <div className='container'>
                <div className='py-16 flex flex-col gap-4 xl:flex-row md:flex-col md:justify-center md:items-center'>
                    <div className='md:w-1/2'>
                        <div className='relative w-full h-96 md:w-96 md:h-96'>
                            <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                        </div>
                    </div>
                    <div className='xl:w-1/2 pt-8 md:pt-0'>
                        <div className='flex flex-col justify-start items-center gap-4'>
                            <h3 className='text-2xl md:text-3xl font-semibold'>{data.meta_title}</h3>
                            <p className='text-gray-500 text-xl' dangerouslySetInnerHTML={{ __html: data.short_desc }}></p>
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default Portfolio