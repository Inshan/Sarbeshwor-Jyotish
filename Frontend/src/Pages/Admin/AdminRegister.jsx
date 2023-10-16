import React, { useState } from 'react';
import { Formik, Form, Field } from 'formik';
import * as Yup from 'yup';
import { Link } from "react-router-dom";
import { Alert, AlertIcon } from '@chakra-ui/react'
const SignupSchema = Yup.object().shape({
    fullName: Yup.string()
        .min(2, 'Too Short!')
        .max(50, 'Too Long!')
        .required('Required'),
    email: Yup.string().email('Invalid email').required('Required'),
    password: Yup.string()
        .required('Required'),
});

const Register = () => {
    const [responseMsg, setResponseMsg] = useState({ msgLabel: '', msgType: '' })
    const handleAddNewAdmin = async (values) => {
        try {
            const response = await fetch('http://localhost:8080/adminregister', {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(values)
            })
            const result = await response.json()
            if (response.status) {
                setResponseMsg({ msgLabel: result.msg, msgType: response.status == 409 ? 'error' : 'success' })
            }
        } catch (error) {
            setResponseMsg({ msgLabel: error.msg, msgType: 'error' })
            console.error("Error posting data:", error)
        }

    }
    return (
        <>
            <div className='w-full h-screen flex justify-center items-center bg-creamyWhite'>
                <div className='flex justify-center flex-col gap-5 border py-20 px-10 bg-white drop-shadow-xl rounded-xl'>
                    <h1 className='text-4xl text-gray-600'>Register for Sarbeshwor Admin</h1>
                    {responseMsg.msgType && <Alert status={responseMsg.msgType} onClose={() => setResponseMsg({ msgLabel: '', msgType: '' })}><AlertIcon />{responseMsg.msgLabel}</Alert>}
                    <Formik
                        initialValues={{
                            fullName: '',
                            email: '',
                            password: ''
                        }}
                        validationSchema={SignupSchema}
                        onSubmit={values => {
                            handleAddNewAdmin(values)
                        }}
                    >
                        {({ errors, touched }) => (
                            <Form className='flex flex-col gap-5 pt-4 '>
                                <div>
                                    <Field className="border w-full h-[40px] ps-4 rounded-xl" name="fullName" placeholder="Full Name" />
                                    {errors.fullName && touched.fullName ? (<div className='text-red-500 text-sm'>{errors.fullName}</div>) : null}
                                </div>

                                <div>
                                    <Field className="border w-full h-[40px] ps-4 rounded-xl" name="email" type="email" placeholder="Email" />
                                    {errors.email && touched.email ? <div className='text-red-500 text-sm'>{errors.email}</div> : null}
                                </div>

                                <div>
                                    <Field className="border w-full h-[40px] ps-4 rounded-xl" name="password" type="password" placeholder="Password" />
                                    {errors.password && touched.password ? <div className='text-red-500 text-sm'>{errors.password}</div> : null}
                                </div>

                                <div className='flex justify-center'>
                                    <button type="submit" className='bg-orange py-2 px-6 text-white'>Submit</button>
                                </div>

                                <div className='flex justify-center'>
                                    <Link className='text-gray-400 hover:text-gray-500' to="/admin">Already have an account.Log In</Link>
                                </div>


                            </Form>
                        )}
                    </Formik>
                </div>

            </div>
        </>

    )
}
export default Register