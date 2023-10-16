import React from 'react'
import CourseAnimate from '../../assets/360animatecourse.png'
const Panchanga = () => {
    return (
        <>
            <div className='w-full pt-8 pb-14'>
                <div className='container flex flex-col justify-center items-center xl:flex-row '>
                    <div className='md:w-1/2 flex flex-col gap-5 justify-center md:order-1'>
                        <div className='flex w-full justify-center'>
                            <h3 className='text-4xl border-b-4 border-red pb-2'>पञ्चाङ्ग</h3>
                        </div>
                        <div className='w-full flex justify-center'>
                            <iframe
                                src="https://www.ashesh.com.np/panchang/widget.php?header_title=Nepali Panchang&header_color=e6e5e2&api=620192n320"
                                marginwidth="30"
                                allowtransparency="true"
                                className='xl:w-[700px] xl:h-[360px] w-96 h-80'>
                            </iframe>
                        </div>
                    </div>
                    {/* <div className='md:w-1/3 w-2/3 flex xl:justify-end py-8 px-4 animate-rotate2 hidden md:block'>
                        <img src={CourseAnimate} alt="" />
                    </div> */}
                </div>
            </div>
        </>
    )
}

export default Panchanga