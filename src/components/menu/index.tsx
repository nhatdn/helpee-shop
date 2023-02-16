import React from "react"
import { Container } from "../"

const Menu = (): JSX.Element => {
    return (
        <div className="text-white text-lg h-12 flex items-center px-4 bg-primary uppercase font-bold">
            <Container>
                <Container>
                    <ul className="flex justify-between">
                        <li className="flex:1 text-center px-4 py-2 cursor-pointer rounded-md hover:bg-hover.secondary uppercase"><a href=""> trang chủ</a></li>
                        <li className="flex:1 text-center px-4 py-2 cursor-pointer rounded-md hover:bg-hover.secondary uppercase"><a href=""> danh mục sản phẩm</a></li>
                        <li className="flex:1 text-center px-4 py-2 cursor-pointer rounded-md hover:bg-hover.secondary uppercase"><a href=""> hợp tác</a></li>
                        <li className="flex:1 text-center px-4 py-2 cursor-pointer rounded-md hover:bg-hover.secondary uppercase"><a href=""> liên hệ</a></li>
                        <li className="flex:1 text-center px-4 py-2 cursor-pointer rounded-md hover:bg-hover.secondary uppercase"><a href=""> tin tức</a></li>
                    </ul>
                </Container>
            </Container>
        </div>
    )
}
export {
    Menu
}