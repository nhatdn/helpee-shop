import React from "react";
import { ASSETS } from "../../constants";
import { Container, Search } from "../";
import { MessageCircle, Bell, User, ShoppingCart } from "react-feather";
const MainHeader: React.FC = (): JSX.Element => {
	return (
		<Container>
			<div className="flex justify-between items-center h-20 bg-bg.white mt-3">
				<img src={ASSETS.LOGO} className="w-200 object-cover" alt="" />
				<div className="flex items-center">
                    <Search name="search"/>
					<button className=" mx-1 outline-none p-1 rounded-lg border-2 border-primary hover:text-white hover:bg-hover.secondary hover:border-hover.secondary"><MessageCircle></MessageCircle></button>
					<button className=" mx-1 outline-none p-1 rounded-lg border-2 border-primary hover:text-white hover:bg-hover.secondary hover:border-hover.secondary"><Bell></Bell></button>
					<button className=" mx-1 outline-none p-1 rounded-lg border-2 border-primary hover:text-white hover:bg-hover.secondary hover:border-hover.secondary"><User></User></button>
					<button className=" mx-1 outline-none p-1 rounded-lg border-2 border-primary hover:text-white hover:bg-hover.secondary hover:border-hover.secondary"><ShoppingCart></ShoppingCart></button>
                </div>
			</div>
		</Container>
	)
};

export {
	MainHeader
}