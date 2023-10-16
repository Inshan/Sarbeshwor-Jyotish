import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link } from "react-router-dom";

// import ImageNews from '../../assets/news_img2.webp'
// import LatestNewsData from '../../Data/LatestNews'

const LastestNews = () => {

    const [data, setData] = useState([]);
    const [image, setImage] = useState([])
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
                    setImage(DocumentData); // Assuming you want to slice the filtered data
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
             <div className='w-full py-16 bg-creamyWhite'>
                <div className='container'>
                    <div className='flex justify-between'>
                        <h3 className='text-3xl md:text-4xl border-b-2 border-red pb-2 text-primary'>{data.title}</h3>
                        {/* <button className='md:text-xl pb-2 text-orange mt-4 transition duration-300 hover:text-red'> थप समाचार <i class="fa-solid fa-chevron-right"></i><i class="fa-solid fa-chevron-right"></i></button> */}
                    </div>

                    <div className='flex flex-col gap-4 mt-8 xl:flex-row lg:flex-row md:flex-row md:flex-wrap xl:flex-nowrap'>
                        {image.map((item) => (
                            <div className='border w-full xl:w-80 md:w-[360px]'>
                                <div className=' bg-red-400 relative h-48 flex flex-col'>
                                    <img src={item.slider_image} alt="" className='absolute w-full h-full' />
                                </div>
                                <div className='ps-4 pe-2 pt-2'>
                                    <p className='text-gray-900 font-semibold text-xl'>{item.title}</p>
                                    {/* <p className='text-gray-900'>{item.newsDescription}</p> */}
                                </div>
                                <div className='ps-4 pe-2 py-2'>
                                    <Link to={`/newsdetail/${item.id}`} className='text-lg text-orange transition duration-300 hover:text-red text-center'>{item.meta_title}</Link>
                                </div>
                            </div>
                        ))}
                    </div>
                </div>
            </div>
        </>
    )
}

export default LastestNews

