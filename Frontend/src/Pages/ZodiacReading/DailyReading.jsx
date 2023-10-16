import React,{useEffect, useState} from 'react'
import axios from 'axios'
// import ProfileBg from '../../assets/slider1.jpeg'
// import zodiacData from '../../Data/zodiacData'

const DailyReading = () =>
 {
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
                    (item) => item.status === "Publish" && item.page_type === "DailyRashifal"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered date
            }
            if (response.data) {
                const DocumentData1 = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "DailyRashifalZodiac"
                );
                setData1(DocumentData1); // Assuming you want to slice the filtered date
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
            {/* ------Top Part------- */}
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-70 flex flex-col justify-center items-center'>
                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data.name}</h3>
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

            <div className='container flex flex-col md:flex-row '>
                <div className='w-full bg-creamyWhite ps-20'>
                    <iframe
                        src="https://www.ashesh.com.np/rashifal/widget.php?header_title=Nepali Rashifal&header_color=F9F6F0&api=670190n184"
                        allowtransparency="true"
                        className='w-full h-[1260px] md:h-[738px] md:pt-10'>
                    </iframe>
                </div>

                {/* <div className='md:w-1/3 bg-creamyWhite'>
                    <div className='w-full md:pt-10'>
                        <iframe
                            title="Nepali Calendar Widget"
                            src="src/Pages/Iframes/nc.html"
                            className='w-80 md:w-96 h-80 pl-5'
                        ></iframe>
                        <iframe
                            title="Nepali Calendar Widget"
                            src="src/Pages/Iframes/upcomingEvents.html"
                            className='w-80 md:w-96 h-[345px] pl-5'
                        ></iframe>
                    </div>
                </div> */}
            {/* </div> */}
            </div>
        </>
    )
}

export default DailyReading





