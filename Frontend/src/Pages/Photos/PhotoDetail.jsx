import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { useParams } from 'react-router-dom'
// import ProfileBg from '../../assets/profileBg.webp'
// import PhotoData from '../../Data/PhotoData'
import ModalImage from "react-modal-image";
import { Link } from 'react-router-dom'
const PhotoDetail = () => {
    const { id } = useParams()
    const [data, setData] = useState([]);
    const [gallery_1, setGallery_1] = useState([]);

    const AboutData = async () => {
        try {
            const response = await axios.get(
                "http://127.0.0.1:8000/api/navigations/"
            );

            // Filter the response data by status and page_type
            if (response.data) {
                const DocumentData = response.data.filter(
                    (item) => item.status === "Publish" && item.page_type === "Photo"
                );
                setData(DocumentData[0]); // Assuming you want to slice the filtered data
            }
            let newGallery = [...response.data]
            newGallery = newGallery.reverse()

            const Gallery_1Data = newGallery.filter(
                (item) => item.status === "Publish" && item.page_type === "PhotoData"
            );
            setGallery_1(Gallery_1Data)

        } catch (error) {
            console.error("Error fetching data:", error);
        }
    };

    const aa = gallery_1.filter((a) => a.name == id)

    useEffect(() => {
        // Axios GET request to fetch data
        AboutData();
    }, []);

    return (
        <>
            {/* ------Top Part------- */}
            <div className='relative w-full h-40 xl:h-80 overflow-hidden'>
                <img src={data.slider_image} alt="" className='absolute w-full h-full object-cover' />
                <div className='absolute w-full h-40 xl:h-80 z-10 bg-black opacity-90 flex flex-col justify-center items-center'>

                    <h3 className='text-4xl xl:text-6xl text-white tracking-wider'>{data.name}</h3>

                    <ol className="flex items-center whitespace-nowrap min-w-0 pt-4" aria-label="Breadcrumb">
                        <li className="text-sm">
                            <Link className="flex items-center text-gray-500" to="/">
                                {data.caption}
                                <svg className="flex-shrink-0 mx-3 overflow-visible h-2.5 w-2.5 text-gray-400" width={16} height={16} viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 1L10.6869 7.16086C10.8637 7.35239 10.8637 7.64761 10.6869 7.83914L5 14" stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                                </svg>
                            </Link>
                        </li>
                        <li className="text-sm font-semibold text-orange truncate" aria-current="page">
                            {data.name}
                        </li>
                    </ol>
                </div>
            </div>
            <div className='py-16'>
                <div className='container flex flex-wrap gap-4'>
                    {aa.reverse().map((z) => (
                        <>
                            <div className='relative xl:w-[336px] md:w-[360px] w-[358px] h-80'>
                                {z.video ? (
                                    <div className='flex felx-wrap gap-4'>
                                        {/* <video 
                                            src={z.video} 
                                            controls 
                                            autoPlay={false} 
                                            loop muted 
                                            poster={z.videothumbnail}
                                            className='w-full h-80 object-cover'></video> */}
                                        <ModalImage
                                            small={z.slider_image}
                                            large={z.slider_image}
                                            className='absolute w-full h-full object-cover'
                                        />
                                    </div>
                                ) : (
                                    <ModalImage
                                        small={z.slider_image}
                                        large={z.slider_image}
                                        className='absolute w-full h-full object-cover'
                                    />
                                )}
                            </div>

                        </>

                    ))}
                </div>
            </div>

        </>
    )
}

export default PhotoDetail





