import React from "react";
import { FullPage } from "../../layouts/full.page";
import { Button, Label, Input, Container, Header, Checkbox } from "../../components"

const Login: React.FC = (): JSX.Element => {
	return (
		<FullPage>
			<Header />
			<div className="flex-1 flex items-center bg-login remaining-login bg-cover bg-no-repeat bg-center">
				<Container>
					<div className=" bg-white w-96 rounded-md">
						<h3 className="font-semibold py-5 text-black text-2xl text-center">Đăng Nhập</h3>
						<form className="pb-10">
							<Container>
								<div className="flex flex-col">
									<Label htmlFor="username">Tài Khoản:</Label>
									<Input name="username" id="username" type="text" />
								</div>
								<div className="flex flex-col">
									<Label htmlFor="password">Mật khẩu:</Label>
									<Input name="password" id="password" type="password" />
								</div>
								<Button className="" handler={() => { }}>Đăng nhập</Button>
								<div className="flex flex-row-reverse justify-end items-center">
									<Label className="text-gray-400 cursor-pointer text-base" htmlFor="save-password">Lưu tài khoản</Label>
									<Checkbox id="save-password" className=" w-4 h-4 mx-2" handler={() => { }}/>
								</div>
							</Container>
						</form>
					</div>
				</Container>
			</div>
		</FullPage>
	)
}

export default Login;