import React, { useState, useEffect, Component } from 'react'
import axios from 'axios'
import OwlCarousel from 'react-owl-carousel';
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel/dist/assets/owl.theme.default.css';
import TestimonialBg from '../../assets/testimonialbg.jpg'
import TestimonUser from '../../assets/testimonuser.jpeg'
import TestimonialData from '../../Data/TestimonialData'
const Testimonial = () => {
    const options = {
        loop: true,
        center: true,
        items: 3,
        margin: 20,
        autoplay: true,
        dots: true,
        autoplayTimeout: 8000,
        smartSpeed: 450,
        nav: false,
        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 1
            },
            1024: {
                items: 1
            },
            1180: {
                items: 1
            }
        }
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
                    (item) => item.status === "Publish" && item.page_type === "Testimonial"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data

                if (response.data) {
                    const DocumentData = response.data.filter(
                        (item) => item.status === "Publish" && item.page_type === "TestimonialData"
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
            <div className='w-full h-[550px]  overflow-hidden  justify-center items-center relative xl:h-[400px]'>
                <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute top-10 left-0 flex justify-center w-full z-5'>
                    <div className='flex justify-start'>
                        <h3 className='text-4xl border-b-4 border-orange pb-2 text-white'>{data.caption}</h3>
                    </div>
                </div>
                <div className='absolute top-1/2 left-1/2 -translate-y-1/2 -translate-x-1/2 w-full pt-20 xl:pt-0'>
                    <OwlCarousel className='owl-theme container' {...options}>
                        {image.map((item) => (
                            <div className='item w-full bg-transparent gap-2  border-orange flex flex-col items-center justify-center xl:gap-20 xl:flex-row'>
                                <div className='flex flex-col gap-4 justify-center items-center'>
                                    <div className='w-32 h-32 rounded-full bg-white overflow-hidden flex flex-col'>
                                        <img src={item.slider_image} alt="" className='w-30 h-32' />
                                    </div>
                                    <p className='text-white xl:mt-5 font-semibold text-xl'>{item.name}</p>
                                </div>
                                <div className='xl:w-3/4 md:w-3/4'>
                                    <p className='text-white xl:text-xl text-base'><span className='text-3xl text-orange'>"</span>{item.desc1}<span className='text-2xl text-orange'>"</span></p>
                                </div>
                            </div>
                        ))}
                    </OwlCarousel>
                </div >
            </div >

        </>
    )
}

export default Testimonial