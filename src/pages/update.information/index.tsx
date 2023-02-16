import React, { useState, useCallback } from "react";
import { Container, Header, Title, Description, Mandatory, Footer, Button, Label, Input } from "../../components";
import { getDataFromEventInput } from "../../helpers";
const UpdateInformation = (): JSX.Element => {
	const [password, setPassword] = useState<string>()
	const [newPassword, setNewPassword] = useState<string>()
	const [confirmPassword, setConfirmPassword] = useState<string>()
	const [ownerHouse, setOwnerHouse] = useState<string>()
	const [phoneNumber, setPhoneNumber] = useState<string>()
	const [countMember, setCountMember] = useState<string>()
	const [address, setAddress] = useState<string>()

	const onSubmit = (e: React.MouseEvent<HTMLElement>) => {
		e.preventDefault();
		console.log({password, newPassword, confirmPassword, ownerHouse, phoneNumber, countMember, address})
	}

	return (
		<React.Fragment>
			<Header />
			<Title>
				<Container>
					CẬP NHẬT THÔNG TIN
				</Container>
			</Title>
			<Container>
				<Description title="Chào mừng bạn đến với Helpee, đây là lần đầu bạn đăng nhập." content="Để đảm bảo sự an toàn và tính bảo mật cho tài khoản, bạn cần đổi mật khẩu mặc định (bên trái). Ngoài ra, dịch vụ cũng cần thiết cung cấp những thông tin cần thiết bên dưới (bên phải)." />
				<Mandatory content="Bắt buộc"/>
				<form action="" className="mb-7">
					<Container>
						<div className="flex justify-evenly">
							<div className="flex-1 border-primary border-2 h-96 max-w-md mr-5 rounded-xl">
								<h5 className="bg-primary h-9 leading-9 text-white rounded-tl-normal rounded-tr-normal font-semibold text-lg text-center">Đổi mật khẩu</h5>
								<Container>
									<div className="my-1">
										<Label><span>Nhập mật khẩu cũ <span>*</span>:</span></Label>
										<Input onChange={(e) => getDataFromEventInput(e, setPassword)} name="pass" className="my-2 w-full h-8 px-2 py-1 rounded-md border-1 border-primary"/>
									</div>
									<div className="my-1">
										<Label><span>Nhập mật khẩu mới <span>*</span>:</span></Label>
										<Input onChange={(e) => getDataFromEventInput(e, setNewPassword)} name="pass" className="my-2 w-full h-8 px-2 py-1 rounded-md border-1 border-primary"/>
									</div>
									<div className="my-1">
										<Label><span>Nhập lại mật khẩu mới <span>*</span>:</span></Label>
										<Input onChange={(e) => getDataFromEventInput(e, setConfirmPassword)} name="pass" className="my-2 w-full h-8 px-2 py-1 rounded-md border-1 border-primary"/>
									</div>
									<div className="my-1">
										<span className="text-gray-400 text-sm">Sử dụng mật khẩu mạnh, tối thiếu 8 ký tự, có sử dụng chữ hoa, số và ký tự đặc biệt</span>
									</div>
								</Container>
							</div>
							<div className="flex-1 border-primary border-2 h-96 max-w-md mr-5 rounded-xl">
								<h5 className="bg-primary h-9 leading-9 text-white rounded-tl-normal rounded-tr-normal font-semibold text-lg text-center">Cập nhật thông tin</h5>
								<Container>
									<div className="my-1">
										<Label><span>Nhập tên chủ hộ <span>*</span>:</span></Label>
										<Input onChange={(e) => getDataFromEventInput(e, setOwnerHouse)} name="pass" placeholder="Nguyen Van A" className="my-2 w-full h-8 px-2 py-1 rounded-md border-1 border-primary"/>
									</div>
									<div className="my-1">
										<Label><span>Nhập số lượng thành viên <span>*</span>:</span></Label>
										<Input onChange={(e) => getDataFromEventInput(e, setCountMember)} name="pass" className="my-2 w-full h-8 px-2 py-1 rounded-md border-1 border-primary"/>
									</div>
									<div className="my-1">
										<Label><span>Nhập số điện thoại liên lạc chính <span>*</span>:</span></Label>
										<Input onChange={(e) => getDataFromEventInput(e, setPhoneNumber)} name="pass" className="my-2 w-full h-8 px-2 py-1 rounded-md border-1 border-primary"/>
									</div>
									<div className="my-1">
										<Label><span>Nhập địa chỉ nhà cụ thể <span>*</span>:</span></Label>
										<Input onChange={(e) => getDataFromEventInput(e, setAddress)} name="pass" placeholder="K199 Pham Van Dong, Dong Ha..." className="my-2 w-full h-8 px-2 py-1 rounded-md border-1 border-primary"/>
									</div>
								</Container>
							</div>
						</div>
					</Container>
					<div className="flex items-center justify-center mt-9">
						<Button className="w-auto px-3 bg-green-500 rounded-md py-2 my-4 uppercase text-white font-semibold hover:bg-hover.primary" handler={onSubmit}>Lưu thay đổi</Button>
					</div>
				</form>
			</Container>
			<Footer/>
		</React.Fragment>
	)
}

export default UpdateInformation;