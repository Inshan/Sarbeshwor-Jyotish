import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { Link } from "react-router-dom";

// import SideImage from '../../assets/aboutus.jpeg'
const AboutUs = () => {

    const [data, setData] = useState([]);

    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );
            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Aboutus"
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
            <div className='md:py-8 py-8'>
                <div className='w-full flex justify-center items-center'>
                    <h3 className='border-b-4 border-red text-2xl md:text-4xl'>{data.caption}</h3>
                </div>
                <div className='container flex flex-col items-center justify-between pt-4 xl:flex-row'>
                    <div className='xl:w-1/2 p-4 flex justify-start'>
                        <div className='container'>
                            <div className='relative w-72 h-96 md:w-[500px] lg:w-[500px] rounded-xl overflow-hidden'>
                                <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                            </div>
                        </div>
                    </div>
                    <div className='xl:w-1/2 flex flex-col gap-4'>
                        <p className='md:text-xl text-gray-500' dangerouslySetInnerHTML={{ __html: data.short_desc }}></p>
                        <div className='flex pt-2 justify-start'>
                            <Link to='/profile' className='bg-red text-xl p-2 xl:py-2 xl:px-4 xl:text-xl text-white rounded-2xl hover:bg-lightCream transition duration-500 hover:text-red '>{data.title}</Link>
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default AboutUs