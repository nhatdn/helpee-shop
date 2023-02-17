import React, { useEffect, useState } from "react";
import { Container, MainHeader, Menu, Footer } from "../../components";
import * as THREE from "three";
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls'
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader";
import { ASSETS } from "../../constants"
import { ShoppingCart } from "react-feather"


const Home = (): JSX.Element => {
    const [showBanner, setShowBanner] = useState<boolean>(true);
    useEffect(() => {
        const root = document.getElementById("container-canvas");
        const camera = new THREE.PerspectiveCamera(90, window.innerWidth/ 500, 0.1, 1000);
        const scene = new THREE.Scene();
        const renderer = new THREE.WebGLRenderer({ alpha: true, antialias: true });
        const controls = new OrbitControls( camera, renderer.domElement );

        root?.childNodes.forEach(node => (node.nodeName === 'CANVAS' && node.remove()));
        camera.position.set(0, 1, 0);
        renderer.setClearColor( 0x000000, 0 );
        renderer.setSize(window.innerWidth - 17 , 500 );
        function onWindowResize() {
            camera.aspect = window.innerWidth / 500;
            camera.updateProjectionMatrix();
            renderer.setSize(window.innerWidth - 17 , 500 );
        }
        const lightPoint = new THREE.PointLight( 0xffffff , 3, 100 ); //0xFFED00
        lightPoint.position.set( 0, 15, 15);
        scene.add( lightPoint );
        let model :THREE.Group;
        const loader = new GLTFLoader();
        loader.load(ASSETS.GLB.FOODS, (gltf) => {
            model = gltf.scene;
            scene.add(gltf.scene);
            root?.appendChild(renderer.domElement);
            setShowBanner(false);
        })
        function animate() {
            if(model) {
                model.rotation.y += 0.003
            }
            requestAnimationFrame(animate)
            controls.update()
            render()
        }
        function render() {
            renderer.render(scene, camera)
        }
        animate()
        window.addEventListener( 'resize', onWindowResize );
        return () => {
            window.removeEventListener('resize', onWindowResize);
        }
        
    }, [])
   
    return (
        <div>
            <Container>
                <MainHeader/>
            </Container>
            <Menu/>
            <div id="container-canvas" className="h-500 bg-gray-200">
                {
                    showBanner && (
                        <img className="w-full h-full object-cover" src={ASSETS.BANNER} alt="" />
                    )
                }
            </div>
            <div className="bg-gray-200">
            <Container>
                <Container>
                    <div className="pt-3 bg-white rounded-md pb-1">
                        <div className="px-3">
                            <h3 className="text-primary uppercase font-bold text-xl mx-1">Danh mục sản phẩm</h3>
                            <div className="flex justify-evenly items-center">
                                <div className="flex:1 m-1 cursor-pointer">
                                    <img className="object-cover h-auto" src={ASSETS.BANHKEO} alt="" />
                                </div>
                                <div className="flex:1 m-1 cursor-pointer">
                                    <img className="object-cover h-auto" src={ASSETS.GIAVI} alt="" />
                                </div>
                                <div className="flex:1 m-1 cursor-pointer">
                                    <img className="object-cover h-auto" src={ASSETS.LUONGTHUC} alt="" />
                                </div>
                            </div>
                            <div className="flex justify-evenly items-center mt-2 pb-2">
                                <div className="flex:1 m-1 cursor-pointer">
                                    <img className="object-cover h-auto" src={ASSETS.NHUYEUPHAMKHAC} alt="" />
                                </div>
                                <div className="flex:1 m-1 cursor-pointer">
                                    <img className="object-cover h-auto" src={ASSETS.THUCPHAMDONGGOI} alt="" />
                                </div>
                                <div className="flex:1 m-1 cursor-pointer">
                                    <img className="object-cover h-auto" src={ASSETS.THUCPHAMTUOISONG} alt="" />
                                </div>
                            </div>
                        </div>
                        <div>
                            <h3 className="text-primary uppercase font-bold text-xl mx-5">Tìm kiếm hàng đầu</h3>
                            <div className="h-44 whitespace-nowrap overflow-x-scroll px-3 mt-1 cursor-pointer">
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.GAO} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.MIANLIEN} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.RAUCU} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.THITHEO} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.TRAICAY} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.GAO} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.MIANLIEN} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.RAUCU} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.THITHEO} alt="" />
                                </div>
                                <div className="w-40 mx-1 inline-block bg-gray-700 relative">
                                    <span className="top-2 left-2 absolute w-8 h-8 bg-primary rounded-2xl text-white uppercase font-semibold text-sm flex items-center justify-center">top</span>
                                    <img src={ASSETS.HIGHTLIGHT.TRAICAY} alt="" />
                                </div>
                            </div>
                        </div>
                        <div>
                            <div className="my-5">
                                <img src={ASSETS.SHORTBANNER} className="w-full h-full object-cover" alt="" />
                            </div>
                        </div>
                        <div className="pt-5 pb-1">
                            <h3 className="text-primary uppercase font-bold text-xl mx-5">Gợi ý</h3>
                            <div className="flex flex-wrap mt-3 bg-gray-200 justify-between">
                                <div className="bg-white my-2 mb-4 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.KHAUTRANG} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-9 h-9 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.BECAITRANG} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.CAROT} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.CATHU} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.CHOCOPIE} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.GAOTHOM} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.KHAUTRANG} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.KHOAI} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.NUOCRUATAY} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.THITGA} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.THITLON} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.TRUNGCUT} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.TRUNGGA} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.CUCAITRANG} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                                <div className="bg-white my-2 mb-4">
                                    <div className="p-1">
                                        <img src={ASSETS.FOODS.NUOCMAM} alt="" />
                                    </div>
                                    <p className="text-center">Khẩu trang <span>(1kg)</span></p>
                                    <div className="text-primary font-semibold flex px-2 justify-evenly py-2">
                                        <p className="text-lg">20.000đ</p>
                                        <span className="w-10 h-10 flex justify-center items-center font-bold rounded-3xl cursor-pointer border-2 border-primary">
                                            <ShoppingCart size={20}/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </Container>
            </Container>
            </div>
            <Footer/>
        </div>
    )
}
export default Home;