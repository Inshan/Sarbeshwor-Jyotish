import React, { useState, useEffect } from 'react'
import axios from 'axios'
import { Link } from "react-router-dom";
import CourseAnimate from '../../assets/360animatecourse.png'
const Course = () => {

    const [data, setData] = useState([]);
    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );
            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "CourseHome"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered date
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
            <div className='py-8'>
                <div className='container flex flex-col justify-between items-center xl:flex-row'>
                    <div className='xl:w-1/2 flex flex-col'>
                        <div className='flex'>
                            <h3 className='text-3xl md:text-4xl border-b-4 border-red pb-2'>{data.caption}</h3>
                        </div>
                        <div className=''>

                            <h3 className='font-semibold text-2xl py-2'>{data.title}</h3>

                            <p className='text-base md:text-xl text-gray-700'>{data.desc1}</p>
                            <br />
                        </div>
                        <div className='flex pt-2'>
                            <Link to='/course' className='bg-red text-xl p-2 xl:py-2 xl:px-4 xl:text-xl text-white rounded-2xl hover:bg-lightCream transition duration-500 hover:text-red '>{data.meta_title}</Link>
                        </div>
                    </div>

                    <div className='md:w-1/3 w-2/3 flex xl:justify-end py-8 px-4 animate-rotate2'>
                        <img src={data.bannerimage} alt="" />
                    </div>
                </div>
            </div>
        </>
    )
}

export default Course