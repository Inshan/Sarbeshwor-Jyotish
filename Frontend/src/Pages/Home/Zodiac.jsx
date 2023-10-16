import React, { useState, useEffect } from 'react'
import axios from 'axios'
import VastuShastra from '../../assets/Vastu-Shastra.png'
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { Link } from 'react-router-dom'
function SampleNextArrow(props) {
    const { className, style, onClick } = props;

    return (
        <div
            className={className}
            style={{ ...style, display: "none" }}
            onClick={onClick}
        />
    );
}
function SamplePrevArrow(props) {
    const { className, style, onClick } = props;
    return (
        <div
            className={className}
            style={{ ...style, display: "none" }}
            onClick={onClick}
        />
    );
}
const Zodiac = () => {
    const settings = {
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        nextArrow: <SampleNextArrow />,
        prevArrow: <SamplePrevArrow />,
        responsive: [
            {
                breakpoint: 375,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,

                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,

                }
            },
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,

                }
            },
            {
                breakpoint: 1180,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,

                }
            },
        ]
    };

    const [data, setData] = useState([]);
    const [data1, setData1] = useState([]);
    const [data2, setData2] = useState([]);
    const [data3, setData3] = useState([]);
    const [data4, setData4] = useState([]);
    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );
            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Rashifal"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered date
            }
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "DailyRashifalHome"
                );
                setData1(DocumentData[0]); // Assuming you want to slice the filtered date
            }
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "WeeklyRashifalHome"
                );
                setData2(DocumentData[0]); // Assuming you want to slice the filtered date
            }
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "MonthlyRashifalHome"
                );
                setData3(DocumentData[0]); // Assuming you want to slice the filtered date
            }
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "YearlyRashifalHome"
                );
                setData4(DocumentData[0]); // Assuming you want to slice the filtered date
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
            <div className='pt-14 pb-20 bg-creamyWhite'>
                <div className='container flex flex-col gap-8'>
                    <div>
                        <div className='flex justify-center'>
                            <h3 className='text-4xl border-b-4 border-red pb-2'>{data.title}</h3>
                        </div>
                    </div>
                    {/* <div className='flex gap-8 flex-col md:flex-row'> */}

                    <Slider {...settings}>

                        <div className='bg-white  p-4 flex flex-col justify-start items-center border-r border-l'>
                            <div className='flex flex-col items-center pt-2'>
                                <div className='flex justify-start'>
                                    <h3 className='text-xl border-b border-red pb-2 font-semibold'>{data1.title}</h3>
                                </div>
                                <div className='pt-2 text-center'>
                                    <p className='text-black'>{data1.desc1}</p>
                                </div>
                                <div className='pt-4'>
                                    <Link to='/dailyreading'>
                                        <button className='bg-red text-white py-2 px-4 font-medium hover:bg-lightCream transition duration-500 hover:text-red'>{data1.caption}</button>
                                    </Link>

                                </div>
                            </div>
                        </div>

                        <div className='bg-white p-4 flex flex-col justify-start items-center border-r border-l'>
                            <div className='flex flex-col items-center pt-2'>
                                <div className='flex justify-start'>
                                    <h3 className='text-xl border-b border-red pb-2 font-semibold'>{data2.title}</h3>
                                </div>
                                <div className='pt-2 text-center'>
                                    <p className='text-black'>{data2.desc1}</p>
                                </div>
                                <div className='pt-4'>
                                    <Link tp='/weeklyreading'>
                                        <button className='bg-red text-white py-2 px-4 font-medium hover:bg-lightCream transition duration-500 hover:text-red'>{data2.caption}</button>
                                    </Link>

                                </div>
                            </div>
                        </div>

                        <div className='bg-white  p-4 flex flex-col justify-start items-center border-r border-l'>
                            <div className='flex flex-col items-center pt-2'>
                                <div className='flex justify-start'>
                                    <h3 className='text-xl border-b border-red pb-2 font-semibold'>{data3.title}</h3>
                                </div>
                                <div className='pt-2 text-center'>
                                    <p className='text-black'>{data3.desc1}</p>
                                </div>
                                <div className='pt-4'>
                                    <Link to='/monthlyreading'>
                                        <button className='bg-red text-white py-2 px-4 font-medium hover:bg-lightCream transition duration-500 hover:text-red'>{data3.caption}</button>
                                    </Link>

                                </div>
                            </div>
                        </div>

                        <div className='bg-white  p-4 flex flex-col justify-start items-center border-r border-l'>
                            <div className='flex flex-col items-center pt-2'>
                                <div className='flex justify-start'>
                                    <h3 className='text-xl border-b border-red pb-2 font-semibold'>{data4.title}</h3>
                                </div>
                                <div className='pt-2 text-center'>
                                    <p className='text-black'>{data4.desc1}</p>
                                </div>
                                <div className='pt-4'>
                                    <Link to='/yearlyreading'>
                                        <button className='bg-red text-white py-2 px-4 font-medium hover:bg-lightCream transition duration-500 hover:text-red'>{data4.caption}</button>
                                    </Link>
                                </div>
                            </div>
                        </div>
                    </Slider>
                    {/* </div> */}
                </div>
            </div>
        </>
    )
}

export default Zodiac