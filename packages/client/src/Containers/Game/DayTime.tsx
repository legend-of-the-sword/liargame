import { GameData, Player } from "../../Types/Types";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import { useModal } from "../../ModalContext";
import { postData } from "../../ApiHelper";
import styles from "./Game.module.css";
import { TitleImage } from "../../assets/images/Images";
import GamePlayerList from "./PlayerList/GamePlayerList";
import Timer from "../../Components/Timer/Timer";
import Rules from "../../Components/Rules/Rules";

const beginNight = async (gameId: number): Promise<void> => postData("/startNight", { gameId });

type DayTimeProps = {
  gameData: GameData,
  hasResult: boolean,
  votingResults?: Player,
  timeRemaining: number,
  castVote: (candidateId: number) => void,
  endRound: () => void,
  focusView: () => JSX.Element | null | undefined,
}

const DayTime: React.FC<DayTimeProps> = ({ gameData, hasResult, castVote, endRound, focusView, timeRemaining }) => {
	const queryClient = useQueryClient();
	const { callModal } = useModal();

	const startNightMutation = useMutation(beginNight, {
		onSuccess: () => {
			queryClient.invalidateQueries(["games"]);
		},
		onError: (error) => {
			if (error instanceof Error) {
				callModal(error.message);
			}
		}
	});

	const startNight = (gameId: number) => {
		startNightMutation.mutate(gameId);
	};

	return (
		<div className={styles.gameScreenImageDay}>
			<div className={styles.gameScreenContainer}>
				<div className={styles.gameScreen}>
					<img src={TitleImage} className={styles.titleImage} alt="LIAR: 신검의 전설 II -- Cipher Syndicate" />
					<div className={styles.roundTimerContainer}>
						<h1 className={styles.dayHeader}>Day {gameData?.currentRound?.roundNumber ?? null}</h1>
						<Timer timeRemaining={timeRemaining}/>
						
					</div>
					{gameData ? <GamePlayerList castVote={castVote} hasResult={hasResult} /> : <p>...loading</p> }
					{/* {hasResult ? 
						<GenericButton text="Start Night" onClick={() => startNight(gameData.game.id)} />
						:
						<GenericButton text="End Round" onClick={endRound} />} */}
						
				</div>
				<div className={styles.voteResults}>
					{focusView()}
				</div>
			</div>
		</div> 
	);
};

export default DayTime;