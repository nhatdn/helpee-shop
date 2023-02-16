import React, { useEffect } from "react";
import { Container, MainHeader, Menu } from "../../components";
import * as THREE from "three";
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls'
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader";
const Home = (): JSX.Element => {
    useEffect(() => {
      

        const root = document.getElementById("container-canvas");
        const camera = new THREE.PerspectiveCamera(90, window.innerWidth/ 500, 0.1, 1000);
        const scene = new THREE.Scene();
        const renderer = new THREE.WebGLRenderer({ alpha: true });
        const controls = new OrbitControls( camera, renderer.domElement );

        root?.childNodes.forEach(node => node.remove());
        camera.position.set( 0, 1, 3 );
        renderer.setClearColor( 0x000000, 0 );
        renderer.setSize( window.innerWidth, 500 );
        root?.appendChild(renderer.domElement);
        function onWindowResize() {
            camera.aspect = window.innerWidth / 500;
            camera.updateProjectionMatrix();
            renderer.setSize( window.innerWidth, 500);
        }
        const loader = new GLTFLoader();
        loader.load("../../assets/glbs/vegetables.glb", (gltf) => {
            scene.add(gltf.scene);
        })
        const geometry = new THREE.BoxGeometry()
        const material = new THREE.MeshBasicMaterial({
            color: 0x00ff00,
            wireframe: true,
        })
        controls.update()

        const cube = new THREE.Mesh(geometry, material)
        scene.add(cube)

        function animate() {
            cube.rotation.x += 0.01
            cube.rotation.y += 0.01
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
            <div id="container-canvas" className="h-500">
                
            </div>
        </div>
    )
}
export default Home;