import { TitleImage } from "../../assets/images/Images";
import MenuButton from "../../Components/MenuButton";
import HomepageCSS from "./Homepage.module.css";
import Rules from "../../Components/Rules/Rules";
import { useLocation } from "react-router-dom";
import { useModal } from "../../ModalContext";
import { useEffect } from "react";
import { useQueryClient } from "@tanstack/react-query";


interface CustomizedState {
	isKicked: boolean | undefined
}

function Homepage() {
	const { callModal } = useModal();
	const location = useLocation();
	const state = location.state as CustomizedState;
	const queryClient = useQueryClient();

	useEffect(() => {
		queryClient.removeQueries(["games"], { exact: true });
		if(state) {
			const { isKicked } = state;
			if(isKicked) callModal("Disconnected from lobby");
		}
	}, []);

	return (
		<div>
			<div className={HomepageCSS["homepage-title-wrapper"]}>
				<img src={TitleImage} className={HomepageCSS.titleImage} alt="LIAR: 신검의 전설 II -- Cipher Syndicate" />
				<h5 className={HomepageCSS["h5Header"]}>LIAR: 신검의 전설 II -- Cipher Syndicate</h5>
			</div>

			<div className={HomepageCSS["hostOrJoinBtns-wrapper"]}>
				<MenuButton
					link={"/newgame"}
					className={HomepageCSS["user-selection-input"]}
					text={"START GAME"}
				/>
			</div>
			<Rules />
		</div>
	);
}

export default Homepage;