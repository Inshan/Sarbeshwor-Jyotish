import React, {useState, useEffect} from 'react'
import axios from 'axios'
import {Link} from 'react-router-dom'
import { useParams } from 'react-router-dom'
import NewsData from '../../Data/LatestNews'
import ProfileBg from '../../assets/slider1.jpeg'
const LatestNewsDetail = () => {
    const { id } = useParams()
    const filteredNews = NewsData.find((item) => item.newsTitle == id)
    const [data, setData] = useState([]);
    const [image, setImage] = useState([])
    const Id = parseInt(id);

    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );
            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "LatestNews"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data

                if (response.data) {
                    const DocumentData = response.data.filter(
                        (item) => item.status === "Publish" && item.page_type === "LatestNewsData"
                    );
                    setImage(DocumentData.find(data => data.id === Id)); 
                }
            }
        }
        catch (error) {
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
                <img src={data.bannerimage} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-70 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'> {data.title}</h3>
                    <ol className="items-center whitespace-nowrap min-w-0 xl:pt-4 flex" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="/">
                                {data.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm font-semibold text-orange truncate" aria-current="page">
                        {data.title}
                        </li>
                    </ol>
                </div>
            </div>

            <div className='container py-8'>
                <div className='relative w-full h-96 xl:h-[540px]'>
                    <img src={image.slider_image} alt="" className='absolute w-full h-full' />
                </div>
                <div className='w-full pt-4 flex justify-between border-b border-gray-200 pb-4'>
                    <h3 className='xl:text-3xl md:text-2xl text-xl font-medium'>{image.title}</h3>
                    <p className='text-gray-600 font-medium'>{image.photodate}</p>
                </div>
                <div className='xl:pt-6 md:pt-6 pt-4'>
                    <p dangerouslySetInnerHTML={{ __html: image.short_desc }}></p>
                </div>
            </div>
        </>
    )
}

export default LatestNewsDetail