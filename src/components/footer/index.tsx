import React from "react";
import { License, Container } from "../";
import { ASSETS } from "../../constants";
const Footer = () => {
    return (
        <div>
            <div className="bg-primary text-white">
                <Container>
                    <Container>
                        <div className="flex justify-evenly">
                            <div className="flex-1 mx-2 max-w-sm px-2 py-2">
                                <div>
                                    <h3 className="leading-10 underline underline-offset-8 font-semibold inline-block uppercase text-white text-xl">Về chúng tôi</h3>
                                    <p className="text-base font-extralight my-2 cursor-pointer">Đây là trang web phi lợi nhuận nhằm hỗ trợ bà con và các cán bộ trong công tác “đi chợ hộ”. </p>
                                </div>
                                <div>
                                    <h3 className="leading-10 underline underline-offset-8 font-semibold inline-block uppercase text-white text-xl">Danh mục sản phẩm</h3>
                                    <ul>
                                        <li className="text-base font-extralight my-2 cursor-pointer">Lương thực</li>
                                        <li className="text-base font-extralight my-2 cursor-pointer">Thực phẩm tươi sống</li>
                                        <li className="text-base font-extralight my-2 cursor-pointer">Thực phẩm đóng gói</li>
                                        <li className="text-base font-extralight my-2 cursor-pointer">Nhu yếu phẩm khác</li>
                                        <li className="text-base font-extralight my-2 cursor-pointer">Bánh kẹo</li>
                                        <li className="text-base font-extralight my-2 cursor-pointer">Gia vị</li>
                                    </ul>
                                </div>
                            </div>
                            <div className="flex-1 mx-2 max-w-sm px-2 py-2">
                                <h3 className="leading-10 underline underline-offset-8 font-semibold inline-block uppercase text-white text-xl">Các chính sách</h3>
                                <ul>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Chính sách bảo mật</li>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Chính sách chăm sóc khách hàng</li>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Chính sách giao hàng nhanh</li>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Vận chuyển</li>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Chính sách bảo hành</li>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Thanh toán</li>
                                </ul>
                            </div>
                            <div className="flex-1 mx-2 max-w-sm px-2 py-2">
                                <h3 className="leading-10 underline underline-offset-8 font-semibold inline-block uppercase text-white text-xl">Theo dõi chúng tôi trên</h3>
                                <ul className="flex w-full items-center">
                                    <li className=" my-2 cursor-pointer"><img src={ASSETS.SOCIANETWORK.INSTAGRAM} alt="" /></li>
                                    <li className=" my-2 cursor-pointer"><img src={ASSETS.SOCIANETWORK.FACEBOOK} alt="" /></li>
                                    <li className=" my-2 cursor-pointer"><img src={ASSETS.SOCIANETWORK.TWITTER} alt="" /></li>
                                    <li className=" my-2 cursor-pointer"><img src={ASSETS.SOCIANETWORK.YOUTUBE} alt="" /></li>
                                    <li className=" m-2 cursor-pointer"><img src={ASSETS.SOCIANETWORK.TIKTOK} alt="" /></li>
                                </ul>
                                <h3 className="leading-10 underline underline-offset-8 font-semibold inline-block uppercase text-white text-xl">Về Helpee</h3>
                                <ul>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Điều khoản sử dụng</li>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Trung tâm trợ giúp</li>
                                    <li className="text-base font-extralight my-2 cursor-pointer">Helpee blogs</li>
                                </ul>
                            </div>
                        </div>
                        <div className="leading-10 font-semibold uppercase text-white text-xl text-center py-5">Quốc gia và Khu vực  Việt Nam</div>
                    </Container>
                </Container>
            </div>
            <License mode="light"/>
        </div>
    )
}

export {
    Footer
}