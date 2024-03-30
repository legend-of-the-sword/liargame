import { useQuery } from "@tanstack/react-query";
import { useNavigate, useParams } from "react-router-dom";
import { getData } from "../../ApiHelper";
import { Game } from "../../Types/Types";
import { TitleImage } from "../../assets/images/Images";
import styles from "./JoinGame.module.css";

const getGameId = async (gameCode: string | undefined): Promise<Game> => getData(`/game?code=${gameCode ? gameCode : ""}`);

function JoinURL(): JSX.Element {
	const { code } = useParams();
	const { error, data: game } = useQuery(["game"], () => getGameId(code));

	const navigate = useNavigate();

	if (error instanceof Error) {
		return <p>An error has occurred: {error.message}</p>;
	}

	if (game) {
		navigate("/newplayer", { state: { gameId: game.id, isHost: false }, replace: true });
	}

	return (
		<>
			<div className={styles["join-game-title-wrapper"]}>
				<img src={TitleImage} className={styles.titleImage} alt="LIAR: 신검의 전설 II -- Cipher Syndicate" />
				<h5 className={styles["header"]}>LIAR: 신검의 전설 II -- Cipher Syndicate</h5>
			</div>
			<p>...joining game</p>
		</>
	);
}

export default JoinURL;