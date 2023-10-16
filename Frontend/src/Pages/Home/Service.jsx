import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { Link } from "react-router-dom";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
// import serviceData from '../../Data/ServiceData'

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
        slidesToShow: 4,
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
                    slidesToShow: 2,
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
                    slidesToShow: 3,
                    slidesToScroll: 1,

                }
            },

        ]
    };

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
                    (item) => item.status === "Publish" && item.page_type === "ServiceHome"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data

                if (response.data) {
                    const DocumentData = response.data.filter(
                        (item) => item.status === "Publish" && item.page_type === "ServiceData"
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
            <div className='md:py-8 bg-creamyWhite py-16'>
                <div className='container flex flex-col gap-8 justify-center'>
                    <div>
                        <div className='flex justify-center'>
                            <h3 className='text-black xl:text-4xl border-b-4 border-red pb-2 text-3xl'>{data.caption}</h3>
                        </div>
                    </div>

                    <Slider {...settings}>
                        {image.map((item) => (
                            <div className='item h-80 bg-white drop-shadow-xl p-4 flex flex-col justify-start items-center
                             group '>
                                <div className='w-68 relative h-60  overflow-hidden'>
                                    <img src={item.slider_image} alt="" className='absolute w-full h-full' />
                                    {/* <div className='absolute w-96 h-96 bg-red opacity-80 rounded-full scale-150 duration-700 transition  group-hover:translate-y-0 group-hover:translate-x-0 translate-y-60 translate-x-80 '> */}

                                    {/* </div> */}
                                    <Link to={`/servicedetail/${item.id}`}>
                                        <div className='absolute w-full h-full flex justify-center items-center'>
                                            <p className='text-xl text-white uppercase border-b border-orange duration-700 transition translate-y-60 '>{item.caption}</p>
                                        </div>
                                    </Link>

                                </div>
                                <div className='flex flex-col items-center pt-2'>
                                    <div className='flex justify-start'>
                                        <h3 className='text-2xl border-b border-orange pb-2'>{item.name}</h3>
                                    </div>
                                </div>
                            </div>
                        ))}
                    </Slider>


                    <Link to='/service'>
                        <div className='flex justify-center md:pt-4'>
                            <button className='bg-red py-2 px-6 text-xl text-white rounded-2xl tracking-wider hover:bg-lightCream transition duration-500 hover:text-red '>{data.meta_title}</button>
                        </div>
                    </Link>
                </div>
            </div>
        </>
    )
}

export default Zodiac