import React, { useEffect, useState } from 'react'
import axios from 'axios'
// import ProfileBg from '../../assets/slider1.jpeg'
// import SarbeswarImage from '../../assets/profileImage.jpeg'
const Profile = () => {

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
                    (item) => item.status === "Publish" && item.page_type === "Profile"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data
            }
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "ProfileMembers"
                );
                setData1(DocumentData); // Assuming you want to slice the filtered data
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
                <img src={data.bannerimage} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-90 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data.title}</h3>
                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <a className="flex items-center text-gray-500" href="/">
                                {data.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </a>
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
            <div className='container flex items-center pt-8 flex-col md:flex-col xl:flex-row xl:gap-20 md:gap-6 gap-6'>
                <div className='md:w-2/3 flex justify-center items-center'>
                    <div className='relative w-[300px] h-[300px] rounded-full overflow-hidden md:w-[400px] md:h-[400px]'>
                        <img src={data.slider_image} alt="" className='absolute w-full h-full' />
                    </div>
                </div>
                <div className='flex flex-col md:w-2/3'>
                    {/* <h3 className='text-4xl'>{data.meta_title}</h3> */}
                    <p className='xl:text-xl text-base' dangerouslySetInnerHTML={{ __html: data.short_desc }}>
                        {/* ज्योतिषशास्त्र परिचय
                    ‘ज्योतिर्यस्य स ज्योतिषः’ अर्थात् प्रकाशित पार्ने द्युत् धातुमा इसुन् प्रत्यय लागेर अनुबन्धलोपपूर्वक ज्योतिष शब्दको निर्माण हुन्छ । यसैगरी उज्यालो अर्थ प्रदान गर्ने ज्योतिस् शब्दमा घञ् प्रत्यय लागेर पनि पाणिनीय व्याकरणअनुसार ज्योतिष शब्द निष्पन्न हुन्छ ।आकाशमा रहेका जति पनि उज्याला तेजपुञ्जछन् ती सबैलाई ज्योति भनिन्छ । ती मध्ये सधैँ एकरूपका रहने नक्षत्र हुन् । */}
                    </p>
                </div>
            </div>
            <div className='container border-b-2 border-lightCream text-center py-4'>
                <h3 className='text-2xl font-semibold text-red'>{data.meta_title}</h3>
            </div>

            <div className='container flex justify-start items-center xl:gap-20 py-4 flex-col md:flex-row'>
                {data1.map((item) => (
                    <div className=' p-4 flex justify-center flex-col items-center'>
                        <div className='relative xl:w-40 xl:h-40 md:w-32 md:h-32 w-32 h-32 overflow-hidden rounded-full '>
                            <img src={item.slider_image} alt="" className='absolute w-full h-full object-cover' />
                        </div>
                        <div className='text-center py-4'>
                            <h3 className='xl:text-3xl font-medium'>{item.name}</h3>
                            <p className='xl:text-2xl text-gray-600'>{item.title}</p>
                            <p className='xl:text-xl text-gray-600'>{item.caption}</p>
                            <p className='text-gray-600'>{item.meta_title}</p>
                        </div>
                    </div>
                ))}
            </div>
        </>

    )
}

export default Profile