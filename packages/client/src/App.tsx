import { ReactNode, useState } from "react";
import { Route, Routes } from "react-router-dom";
import "./App.css";
import Lobby from "./Containers/Lobby/Index";
import Homepage from "./Containers/Homepage/Index";
import CreateLobby from "./Containers/CreateLobby/Index";
import JoinGame from "./Containers/JoinGame/Index";
import CreatePlayer from "./Containers/CreatePlayer/Index";
import JoinURL from "./Containers/JoinGame/JoinURL";
import { ModalContext } from "./ModalContext";
import { Modal } from "./Components/Modal/Modal";
import Game from "./Containers/Game/Index";
import { useComponentValue } from "@latticexyz/react";
import { SyncStep } from "@latticexyz/store-sync";
import { singletonEntity } from "@latticexyz/store-sync/recs";
import { useMUD } from "./lib/config/MUDContext";
function App() {
    const {
        components: { SyncProgress },
      } = useMUD();
      const loadingState = useComponentValue(SyncProgress, singletonEntity, {
        step: SyncStep.INITIALIZE,
        message: "Connecting to world",
        percentage: 0,
        latestBlockNumber: 0n,
        lastBlockNumberProcessed: 0n,
      });
	// allows us set state for the modal 
	const [modalContent, setModalContent] = useState<ReactNode | null>(null);
	const [modalIsOpen, setModalIsOpen] = useState<boolean>(false);
	// provides us with all the relevant properties to open and close the modal
	const modalProvideValue = {
		content: modalContent,
		isOpen: modalIsOpen,
		callModal: (content: ReactNode) => {
			setModalContent(content);
			setModalIsOpen(true);
		},
		closeModal: () => {
			setModalContent(null);
			setModalIsOpen(false);
		},
	};

	//wrapped the app in modal context provider so that any component can call the modal
	return (
		<ModalContext.Provider value={modalProvideValue}>
			<Modal />
			<Routes>
				<Route path="/" element={<Homepage />} />
				<Route path="/newgame" element={<CreateLobby />} />
				<Route path="/join" element={<JoinGame />} />
				<Route path="/newplayer" element={<CreatePlayer />} />
				<Route path="/lobby" element={<Lobby />} />
				<Route path="/join/:code" element={<JoinURL />} />
				<Route path="/game" element={<Game />} />
			</Routes>
		</ModalContext.Provider>
	);
}

export default App;
